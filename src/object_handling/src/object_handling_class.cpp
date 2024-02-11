/* Software License Agreement (MIT License)
 *
 *  Copyright (c) 2024-, Yuang Du
 *
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the copyright holder(s) nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 */

// It include three class Object_Handling, MoveitController(for task1), PclProcessor(for task2 and task3)
#include <object_handling_class.h>
///////////////////////////////////////////////////////////////////////////////
Object_Handling::Object_Handling(ros::NodeHandle nh) : nh_(nh),
                                                      pcl_obj_(nh)
{
  /* class constructor */
  // advertise solutions for project tasks
  t1_service_ = nh_.advertiseService("/task1_start",
                                     &Object_Handling::t1_callback, this);
  t2_service_ = nh_.advertiseService("/task2_start",
                                     &Object_Handling::t2_callback, this);
  t3_service_ = nh_.advertiseService("/task3_start",
                                     &Object_Handling::t3_callback, this);

  ROS_INFO("Object_Handling class initialised");
}

///////////////////////////////////////////////////////////////////////////////

bool 
Object_Handling::t1_callback(panda_world_spawner::Task1Service::Request &request,
                      panda_world_spawner::Task1Service::Response &response)
{
  /* function which should solve task 1 */
  bool success = true;
  ROS_INFO("The project solving callback for task 1 has been triggered");

  moveit_obj_.pickAndPlace(request.object_loc.pose.position, request.goal_loc.point);

  return true;
}

///////////////////////////////////////////////////////////////////////////////

bool 
Object_Handling::t2_callback(panda_world_spawner::Task2Service::Request &request,
                      panda_world_spawner::Task2Service::Response &response)
{
  /* function which should solve task 2 */
  bool success = true;
  ROS_INFO("The project solving callback for task 2 has been triggered");

  // Move the arm to the scanning position
  success *= moveit_obj_.moveArm(moveit_obj_.Scanning_pose);

  // Obtain the number of locations requested
  int num_baskets = request.basket_locs.size();

  // Store the basket locations requested
  for (int i = 0; i < num_baskets; i++)
  {
    geometry_msgs::Point &basket_loc = request.basket_locs[i].point;
    pcl_obj_.locs_requested[i] = basket_loc;
  }

  // Segment cluster of item and compute the position of the point cloud
  pcl_obj_.clusterPC();

  // Obtain the size, location, and colour of each PC cluster
  for (int i = 0; i < pcl_obj_.item_clusters.size(); ++i)
    pcl_obj_.getPCProperty(i, pcl_obj_.item_clusters[i]);

  // The logic of this part is that every basket is chosen and compute the distance between each item is found.
  // Then, using a map to store the index of basket and the corresponding colour from map, item_property_colour.

  // Match PC clusters with requested locations
  // Initialise all response as "none"
  response.basket_colours = std::vector<std::string>(pcl_obj_.locs_requested.size(), "none");
  // Iterate throught requested locations
  for (int i = 0; i < pcl_obj_.locs_requested.size(); ++i)
  {
    // Iterate through PC clusters
    for (const auto &prop : pcl_obj_.pcProperties)
    {
      // Compare distance
      double distance = std::sqrt(std::pow(pcl_obj_.locs_requested[i].x - prop.second.position.x, 2) +
                                  std::pow(pcl_obj_.locs_requested[i].y - prop.second.position.y, 2));
      if (distance < 0.1)
        response.basket_colours[i] = prop.second.colour;
    }
  }

  ROS_INFO("%s, %s, %s, %s", response.basket_colours[0].c_str(), response.basket_colours[1].c_str(), response.basket_colours[2].c_str(), response.basket_colours[3].c_str());

  return true;
}

///////////////////////////////////////////////////////////////////////////////

bool 
Object_Handling::t3_callback(panda_world_spawner::Task3Service::Request &request,
                      panda_world_spawner::Task3Service::Response &response)
{
  // Clear the  maps for task repeatability
  pcl_obj_.pcProperties.clear();
  pcl_obj_.baskets.clear();
  pcl_obj_.cubes.clear();

  bool success = true;
  ROS_INFO("The project solving callback for task 3 has been triggered");

  // Move the arm to the scanning position
  success *= moveit_obj_.moveArm(moveit_obj_.Scanning_pose);

  // Segment cluster of item and compute the position of the point cloud
  pcl_obj_.clusterPC();

  // Obtain the size, type, location, and colour of each PC cluster
  for (int i = 0; i < pcl_obj_.item_clusters.size(); ++i)
    pcl_obj_.getPCProperty(i, pcl_obj_.item_clusters[i]);

  // Differentiate clusters into cubes and baskets
  pcl_obj_.differentiateCluster(pcl_obj_.pcProperties);

  // Performe the pick and place
  if (pcl_obj_.cubes.size() == 0)
    ROS_INFO("No cube to pick!");
  // Iterate throught cubes
  for (const auto &cube : pcl_obj_.cubes)
  {
    int basket_idx = 0;
    // Iterate throught baskets
    for (const auto &basket : pcl_obj_.baskets)
    {
      // If the colour matches
      if (cube.second.colour == basket.second.colour)
      {
        // Perform the pick and place operation
        moveit_obj_.pickAndPlace(cube.second.position, basket.second.position);
        break; // Move to the next cube once placed
      }
      else
        basket_idx++;
      // No matched basket for the current cube
      if (basket_idx == pcl_obj_.baskets.size())
      {
        ROS_INFO("No matched basket found for %s cube", cube.second.colour.c_str());
      }
    }
  }
  return true;
}

///////////////////////////////////////////////////////////////////////////////

MoveitController::MoveitController()
{
  // Define grasping as from above
  tf2::Quaternion q_x180deg(-1, 0, 0, 0);

  // Determine the grasping orientation
  tf2::Quaternion q_object;
  q_object.setRPY(0, 0, angle_offset_);
  tf2::Quaternion q_result = q_x180deg * q_object;
  grasp_orientation = tf2::toMsg(q_result);

  // Set the desired scanning pose
  Scanning_pose.position.x = 0.4;
  Scanning_pose.position.y = 0;
  Scanning_pose.position.z = 0.85;
  Scanning_pose.orientation = grasp_orientation;
}
////////////////////////////////////////////////////////////////////////////////

bool MoveitController::moveArm(geometry_msgs::Pose target_pose)
{
  // Setup the target pose
  ROS_INFO("Setting pose target");
  arm_group_.setPoseTarget(target_pose);

  // Create a movement plan for the arm
  ROS_INFO("Attempting to plan the path");
  moveit::planning_interface::MoveGroupInterface::Plan my_plan;
  bool success = (arm_group_.plan(my_plan) ==
                  moveit::planning_interface::MoveItErrorCode::SUCCESS);

  ROS_INFO("Visualising plan %s", success ? "" : "FAILED");

  // Execute the planned path
  arm_group_.move();

  return success;
}

////////////////////////////////////////////////////////////////////////////////

bool MoveitController::moveGripper(float width)
{
  // Safety checks in case width exceeds safe values
  if (width > gripper_open_)
    width = gripper_open_;
  if (width < gripper_closed_)
    width = gripper_closed_;

  // Calculate the joint targets as half each of the requested distance
  double eachJoint = width / 2.0;

  // Create a vector to hold the joint target for each joint
  std::vector<double> gripperJointTargets(2);
  gripperJointTargets[0] = eachJoint;
  gripperJointTargets[1] = eachJoint;

  // Apply the joint target
  hand_group_.setJointValueTarget(gripperJointTargets);

  // Move the robot hand
  ROS_INFO("Attempting to plan the path");
  moveit::planning_interface::MoveGroupInterface::Plan my_plan;
  bool success = (hand_group_.plan(my_plan) ==
                  moveit::planning_interface::MoveItErrorCode::SUCCESS);

  ROS_INFO("Visualising plan %s", success ? "" : "FAILED");

  // Move the gripper joints
  hand_group_.move();

  return success;
}
////////////////////////////////////////////////////////////////////////////////

bool 
MoveitController::pickAndPlace(geometry_msgs::Point object_loc, geometry_msgs::Point goal_loc)
{
  /* This function picks up an object using a pose. And place it in a basket.
  The first given point is where the centre of the gripper fingers will converge,
  The second point is the center of the basket where the object to be placed */

  // Set the desired grasping pose
  grasp_pose.position = object_loc;
  grasp_pose.orientation = grasp_orientation;
  grasp_pose.position.z += z_offset_;

  // Set the desired pre-grasping pose
  approach_pose = grasp_pose;
  approach_pose.position.z += approach_distance_ob_;

  // Set the desired lifting pose
  lifting_pose = grasp_pose;
  lifting_pose.position.z += lifting_distance_;

  // Set the desired pose to place the object
  place_pose.position = goal_loc;
  place_pose.orientation = grasp_orientation;
  place_pose.position.z += approach_distance_gol_;

  /* Now perform the pick */

  bool success = true;

  ROS_INFO("Begining pick operation");

  // Move the arm above the object
  success *= moveArm(approach_pose);

  if (not success)
  {
    ROS_ERROR("Moving arm to pick approach pose failed");
    return false;
  }

  // Open the gripper
  success *= moveGripper(gripper_open_);

  if (not success)
  {
    ROS_ERROR("Opening gripper prior to pick failed");
    return false;
  }

  // Approach to grasping pose
  success *= moveArm(grasp_pose);

  if (not success)
  {
    ROS_ERROR("Moving arm to grasping pose failed");
    return false;
  }

  // Grasp!
  success *= moveGripper(gripper_closed_);

  if (not success)
  {
    ROS_ERROR("Closing gripper to grasp failed");
    return false;
  }

  // Lifting with object
  success *= moveArm(lifting_pose);

  if (not success)
  {
    ROS_ERROR("Lifting arm after picking failed");
    return false;
  }

  // Moving the object to the basket location
  success *= moveArm(place_pose);

  if (not success)
  {
    ROS_ERROR("Moving the object to the basket failed");
    return false;
  }

  // Place!
  success *= moveGripper(gripper_open_);

  if (not success)
  {
    ROS_ERROR("Opening gripper to place failed");
    return false;
  }

  ROS_INFO("Pick and place operation successful");

  return true;
}

////////////////////////////////////////////////////////////////////////////////

PclProcessor::PclProcessor(ros::NodeHandle &nh) : g_cloud_ptr(new PointC),     // input point cloud
                                g_cloud_filtered(new PointC),                  // filtered point cloud
                                g_tree_ptr(new pcl::search::KdTree<PointT>()), // KdTree
                                debug_(false)
{
  g_nh = nh;

  // Define the publishers
  g_pub_cloud = g_nh.advertise<sensor_msgs::PointCloud2>("filtered_cloud", 1, true);
  g_pub_pose = g_nh.advertise<geometry_msgs::PointStamped>("cluster_pt", 1, true);

  // Define public variables
  g_vg_leaf_sz = 0.001;  // VoxelGrid leaf size: Better in a config file
  g_pt_thrs_min = 0.0;   // PassThrough min thres: Better in a config file
  g_pt_thrs_max = 0.74;  // PassThrough max thres: Better in a config file
  type_threshold = 2500; // Threshold of differentiate cluster type
}

////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::pclCallback(const sensor_msgs::PointCloud2ConstPtr &cloud_input_msg)
{
  // Extract inout point cloud info
  g_input_pc_frame_id_ = cloud_input_msg->header.frame_id;

  // Convert to PCL data type
  pcl_conversions::toPCL(*cloud_input_msg, g_pcl_pc);
  pcl::fromPCLPointCloud2(g_pcl_pc, *g_cloud_ptr);

  // Perform the filtering and show
  applyVX(g_cloud_ptr, g_cloud_filtered);
  applyPT(g_cloud_filtered, g_cloud_filtered); // Clip in 'z' direction to remove the plane
  pubFilteredPCMsg(g_pub_cloud, *g_cloud_filtered);
}
////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::applyVX(PointCPtr &in_cloud_ptr,
                      PointCPtr &out_cloud_ptr)
{
  g_vx.setInputCloud(in_cloud_ptr);
  g_vx.setLeafSize(g_vg_leaf_sz, g_vg_leaf_sz, g_vg_leaf_sz);
  g_vx.filter(*out_cloud_ptr);

  return;
}

////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::applyPT(PointCPtr &in_cloud_ptr,
                           PointCPtr &out_cloud_ptr)
{
  g_pt.setInputCloud(in_cloud_ptr);
  g_pt.setFilterFieldName("z");
  g_pt.setFilterLimits(g_pt_thrs_min, g_pt_thrs_max);
  g_pt.filter(*out_cloud_ptr);

  return;
}

////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::clusterPC()
{
  pcl::PointCloud<pcl::PointXYZRGBA>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZRGBA>);
  // Copy current point cloud for clustering
  pcl::copyPointCloud(*g_cloud_filtered, *cloud);
  // Creating the KdTree object for the search method of the extraction
  g_tree_ptr->setInputCloud(cloud);
  std::vector<pcl::PointIndices> cluster_indices;
  pcl::EuclideanClusterExtraction<pcl::PointXYZRGBA> ec;
  ec.setClusterTolerance(0.015); // Setting the suitable radius to find the cluster
  ec.setMinClusterSize(100);     // Setting the minimum number points for each cluster
  ec.setMaxClusterSize(10000);   // Setting the maximum number points for each cluster
  ec.setSearchMethod(g_tree_ptr);
  ec.setInputCloud(cloud);
  ec.extract(cluster_indices);

  // Using the for-loop to extract the point from the original point cloud
  item_clusters.clear();
  for (const auto &cluster : cluster_indices)
  {
    PointCPtr cloud_cluster(new PointC);
    // extract the point from the original point cloud to the temporary container
    for (const auto &index : cluster.indices)
      cloud_cluster->push_back((*cloud)[index]);
    cloud_cluster->width = cloud_cluster->size();
    cloud_cluster->height = 1;
    cloud_cluster->is_dense = true;
    cloud_cluster->header.frame_id = g_input_pc_frame_id_;

    // Store the point cloud extracted from the original point cloud to the vector
    item_clusters.push_back(cloud_cluster);
  }
}
////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::getPCProperty(int index, PointCPtr &in_cloud_ptr)
{
  // Get the type of the cluster based on its size
  std::string type;
  if (in_cloud_ptr->size() > type_threshold)
    type = "basket";
  else
    type = "cube";

  // Get the colour of the cluster
  std::string colourOfCloud = getPCColour(in_cloud_ptr);

  // Compute the centroid position 
  Eigen::Vector4f centroid_in;
  pcl::compute3DCentroid(*in_cloud_ptr, centroid_in);
  g_pt_msg.header.frame_id = g_input_pc_frame_id_;
  g_pt_msg.header.stamp = ros::Time(0);
  g_pt_msg.point.x = centroid_in[0];
  g_pt_msg.point.y = centroid_in[1];
  g_pt_msg.point.z = centroid_in[2];

  // Transform the point to new frame
  geometry_msgs::PointStamped g_pt_msg_out;
  try
  {
    g_listener_.transformPoint("panda_link0", // bad styling
                               g_pt_msg,
                               g_pt_msg_out);
  }
  catch (tf::TransformException &ex)
  {
    ROS_ERROR("Received a trasnformation exception: %s", ex.what());
  }
  // Publish the pointstamp
  publishPose(g_pt_msg_out);

  // Store the preperties of the PC cluster in a map
  pcProperties[index] = clusterProperties(in_cloud_ptr->size(), type, colourOfCloud, g_pt_msg_out.point);
  return;
}

////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::pubFilteredPCMsg(ros::Publisher &pc_pub,
                               PointC &pc)
{
  // Publish the data
  pcl::toROSMsg(pc, g_cloud_filtered_msg);
  pc_pub.publish(g_cloud_filtered_msg);

  return;
}

////////////////////////////////////////////////////////////////////////////////

void 
PclProcessor::publishPose(geometry_msgs::PointStamped &pt_msg)
{
  // Create and publish the cylinder pose(ignore orientation)
  g_pub_pose.publish(pt_msg);

  return;
}

////////////////////////////////////////////////////////////////////////////////

// Identify the colour of a point cloud cluster
std::string PclProcessor::getPCColour(PointCPtr cloud)
{
  // Initialize a map storing color counts
  std::map<std::string, int> colour_counts = {
      {"red", 0},
      {"purple", 0},
      {"blue", 0}};

  // Seed the random number generator to ensure different results each run
  std::srand(static_cast<unsigned int>(std::time(nullptr)));

  // Create a vector of indices to represent all points in the cloud
  std::vector<int> indices(cloud->points.size());
  std::iota(indices.begin(), indices.end(), 0); // Fill with 0, 1, ..., n-1

  // Shuffle the indices to randomize their order
  std::random_shuffle(indices.begin(), indices.end());

  // Iterate through the first 20 randomized indices in the cloud
  for (int i = 0; i < 20 && i < indices.size(); ++i)
  {
    auto& point = cloud->points[indices[i]];
    // Iterate through colours with defined r,g,b values
    for (const auto &colour_pair : basket_colour_)
    {
      // check whether it is the same for point' rgb value and defined rgb value for each colour
      if (isColourMatch(point, colour_pair.second))
      {
        colour_counts[colour_pair.first]++;
        break; // Found a matching colour, no need to check the rest
      }
    }
  }

  // Use the majority colour as the colour of the cluster
  std::string colour_maj = "";
  int max_count = 0;
  for (const auto &colour_count : colour_counts)
  {
    if (colour_count.second > max_count)
    {
      max_count = colour_count.second;
      colour_maj = colour_count.first;
    }
  }
  return colour_maj; // Return the most frequent colour
}


////////////////////////////////////////////////////////////////////////////////

bool 
PclProcessor::isColourMatch(const PointT &point, const std::vector<double> &expected_colour, double tol)
{
  // Normorlize the RGB value of a extracted point
  r = static_cast<double>(point.r) / 255.0;
  g = static_cast<double>(point.g) / 255.0;
  b = static_cast<double>(point.b) / 255.0;

  // Get rgb values of the expected colour
  expected_r = expected_colour[0];
  expected_g = expected_colour[1];
  expected_b = expected_colour[2];

  // Return true if the differences between detected rgb values and expected ones are within the tolerance
  return (std::abs(r - expected_r) <= tol &&
          std::abs(g - expected_g) <= tol &&
          std::abs(b - expected_b) <= tol);
}

void 
PclProcessor::differentiateCluster(std::map<int, clusterProperties> &pcProperties)
{
  // Separate clusters into baskets and cubes based on sizeThreshold
  for (auto &item : pcProperties)
  {
    if (item.second.type == "basket")
      baskets.insert(item);
    else if (item.second.type == "cube")
    {
      item.second.position.z = 0.02;
      cubes.insert(item);
    }
  }
}