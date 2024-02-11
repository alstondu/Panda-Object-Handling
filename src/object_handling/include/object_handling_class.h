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

/** \mainpage object_handling Main Page
  * 
  * \section Overview
  * 
  *  The objective is to perform pick and place tasks in Gazebo, using MoveIt! to move the robot and PCL to detect object positions and colours.
  * 
  * \author Yuang Du
  * 
  * \section Additional Information
  * 
  *  Detailed information can be found on the Github page:
  * 
  *  https://github.com/alstondu/Panda-Object-Handling
  * 
  */

// include guards, prevent .h file being defined multiple times(linker error)
#ifndef OBJECT_HANDLING_CLASS_H_
#define OBJECT_HANDLING_CLASS_H_

// system includes
#include <ros/ros.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Scalar.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_ros/transform_listener.h>

// TF specific includes
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>

// include services from the spawner package - we will be responding to these
#include "panda_world_spawner/Task1Service.h"
#include "panda_world_spawner/Task2Service.h"
#include "panda_world_spawner/Task3Service.h"

// PCL specific includes
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/common/centroid.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/features/normal_3d.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/search/kdtree.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/segmentation/extract_clusters.h>

typedef pcl::PointXYZRGBA PointT;
typedef pcl::PointCloud<PointT> PointC;
typedef PointC::Ptr PointCPtr;


/** \brief Class used to control movement with MoveIt functions */
class MoveitController
{
public:
  /* ----- class member functions ----- */

  /** \brief MoveIt function for moving the move_group to the target position */
  MoveitController();

  /** \brief MoveIt function for moving the move_group to the target position
   *
   * \param target_pose pose to move the arm to
   *
   * \return true if moved to target position
   */
  bool
  moveArm(geometry_msgs::Pose target_pose);

  /** \brief MoveIt function for moving the gripper fingers to a new position.
   *
   * \param width desired gripper finger width
   *
   * \return true if gripper fingers are moved to the new position
   */
  bool
  moveGripper(float width);

  /** \brief Function for picking up and object from one loc and place it in another
   *
   * \param object_loc point for the object to be grasped
   * \param goal_loc point for the basket
   * 
   * \return true if the pick up and place is successful
   */
  bool
  pickAndPlace(geometry_msgs::Point object_loc, geometry_msgs::Point goal_loc);

  /* Variables */
  /** \brief Define some useful constant values related to pick and place. */
  std::string base_frame_ = "panda_link0";
  double gripper_open_ = 60e-3;
  double gripper_closed_ = 35e-3;
  double z_offset_ = 0.125;
  double angle_offset_ = 3.14159 / 4.0;
  double approach_distance_ob_ = 0.1;
  double approach_distance_gol_ = 0.3;
  double lifting_distance_ = 0.3;

  /** \brief Poses of the pick operation */
  geometry_msgs::Quaternion grasp_orientation;
  geometry_msgs::Pose grasp_pose;
  geometry_msgs::Pose approach_pose;
  geometry_msgs::Pose lifting_pose;
  geometry_msgs::Pose place_pose;
  geometry_msgs::Pose Scanning_pose;

  /** \brief MoveIt interface to move groups to seperate the arm and the gripper,
   * these are defined in urdf. */
  moveit::planning_interface::MoveGroupInterface arm_group_{"panda_arm"};
  moveit::planning_interface::MoveGroupInterface hand_group_{"hand"};
};

/** \brief Class used to process point cloud with PCL functions */
class PclProcessor
{
public:
  /** \brief The container to store the size, type, colour and position of a pc cluster. */
  struct clusterProperties
  {
    size_t size;
    std::string type;
    std::string colour;
    geometry_msgs::Point position;
    // Default constructor
    clusterProperties() : size(0), type(""), colour(""), position(geometry_msgs::Point()) {}
    // Parameterized constructor
    clusterProperties(size_t size, const std::string &type, const std::string &colour, const geometry_msgs::Point &position)
        : size(size), type(type), colour(colour), position(position) {}
  };

  /** \brief Empty constructor.
   *
   * \param nh the ROS node handle
   */
  PclProcessor(ros::NodeHandle &nh);

  /** \brief Point Cloud CallBack function.
   *
   * \param cloud_input_msg a PointCloud2 sensor_msgs const pointer
   */
  void
  pclCallback(const sensor_msgs::PointCloud2ConstPtr &cloud_input_msg);

  /** \brief Apply Voxel filtering.
   *
   * \param in_cloud_ptr the input PointCloud2 pointer
   * \param out_cloud_ptr the output PointCloud2 pointer
   */
  void
  applyVX(PointCPtr &in_cloud_ptr,
          PointCPtr &out_cloud_ptr);

  /** \brief Apply Pass Through filtering.
   *
   * \param in_cloud_ptr the input PointCloud2 pointer
   * \param out_cloud_ptr the output PointCloud2 pointer
   */
  void
  applyPT(PointCPtr &in_cloud_ptr,
          PointCPtr &out_cloud_ptr);

  /** \brief Cluster current point cloud.
   */
  void
  clusterPC();

  /** \brief Compute the property of a Cloud cluster.
   *
   * \param index the item index
   * \param in_cloud_ptr the input PointCloud2  cluster pointer
   */
  void
  getPCProperty(int index, PointCPtr &in_cloud_ptr);

  /** \brief Point Cloud publisher.
   *
   *  \param pc_pub ROS publisher
   *  \param pc point cloud to be published
   */
  void
  pubFilteredPCMsg(ros::Publisher &pc_pub, PointC &pc);

  /** \brief Publish the cylinder point.
   *
   *  \param cyl_pt_msg Cylinder's geometry point
   */
  void
  publishPose(geometry_msgs::PointStamped &cyl_pt_msg);

  /** \brief Function to identify the colour of a point cloud cluster
   *
   *  \param cloud of a point cloud cluster
   */
  std::string
  getPCColour(PointCPtr cloud);

  /** \brief Function to check if a point's colour matches the expected colour
   *
   *  \param point point from point cloud
   *  \param expected_colour expected colour name
   *  \param tol tolerance of identifying colour
   *  \return true if point's colour matches expected colour
   */
  bool
  isColourMatch(const PointT &point, const std::vector<double> &expected_colour, double tol = 0.1);

  /** \brief Function to check whether a cluster is a box or a basket
   *
   *  \param pcProperties with cluster index and its properties
   */
  void
  differentiateCluster(std::map<int, clusterProperties> &pcProperties);

public:
  /** \brief Normalized r,g,b value of points*/
  double r;
  double g;
  double b;

  /** \brief Expected r,g,b value for boxes and baskets*/
  double expected_r;
  double expected_g;
  double expected_b;

  /** \brief Define the expected colours for the boxes*/
  std::map<std::string, std::vector<double>> basket_colour_ = {
      {"red", {0.8, 0.1, 0.1}},
      {"purple", {0.8, 0.1, 0.8}},
      {"blue", {0.1, 0.1, 0.8}}};

  /** \brief Node handle. */
  ros::NodeHandle g_nh;

  /** \brief The input point cloud frame id. */
  std::string g_input_pc_frame_id_;

  /** \brief ROS publishers. */ // some can be deleted
  ros::Publisher g_pub_cloud;

  /** \brief ROS pose publishers. */
  ros::Publisher g_pub_pose;

  /** \brief ROS geometry message point. */
  geometry_msgs::PointStamped g_pt_msg;

  /** \brief Point Cloud(filtered) sensros_msg for publ. */
  sensor_msgs::PointCloud2 g_cloud_filtered_msg;

  /** \brief Voxel Grid filter's leaf size. */
  double g_vg_leaf_sz;

  /** \brief Point Cloud(input) pointer. */
  PointCPtr g_cloud_ptr;

  /** \brief Point Cloud(filtered) pointer. */
  PointCPtr g_cloud_filtered;

  /** \brief Point Cloud(input). */
  pcl::PCLPointCloud2 g_pcl_pc;

  /** \brief Voxel Grid filter. */
  pcl::VoxelGrid<PointT> g_vx;

  /** \brief Pass Through filter. */
  pcl::PassThrough<PointT> g_pt;

  /** \brief Pass Through min and max threshold sizes. */
  double g_pt_thrs_min, g_pt_thrs_max;

  /** \brief TF listener definition. */
  tf::TransformListener g_listener_;

  /** \brief KDTree for nearest neighborhood search. */
  pcl::search::KdTree<PointT>::Ptr g_tree_ptr;

  /** \brief The container to store the point cloud extracted from the original cloud. */
  std::vector<PointCPtr> item_clusters;

  /** \brief The container to store the index of basket with estimation point cloud position. */
  std::map<int, geometry_msgs::Point> locs_requested;

  /** \brief Threshold of differentiateCluster cluster type. */
  size_t type_threshold;

  /** \brief The container to store the index and properties of all clusters. */
  std::map<int, clusterProperties> pcProperties;

  /** \brief The container to store all the baskets and their properties. */
  std::map<int, clusterProperties> baskets;

  /** \brief The container to store all the cubes and their properties. */
  std::map<int, clusterProperties> cubes;

protected:
  /** \brief Debug mode. */
  bool debug_;
};

/** \brief Class used to publish requests and interact with the world spawner */
class Object_Handling
{
public:
  /* ----- class member functions ----- */

  /** \brief Class constructor */
  Object_Handling(ros::NodeHandle nh);

  /** \brief service callbacks for tasks 1, 2, and 3. */
  bool
  t1_callback(panda_world_spawner::Task1Service::Request &request,
              panda_world_spawner::Task1Service::Response &response);
  bool
  t2_callback(panda_world_spawner::Task2Service::Request &request,
              panda_world_spawner::Task2Service::Response &response);
  bool
  t3_callback(panda_world_spawner::Task3Service::Request &request,
              panda_world_spawner::Task3Service::Response &response);

  /* ----- class member variables ----- */

  ros::NodeHandle nh_;
  ros::ServiceServer t1_service_;
  ros::ServiceServer t2_service_;
  ros::ServiceServer t3_service_;

  /** \brief MoveitController object as a member variable */
  MoveitController moveit_obj_;

  /** \brief PclProcessor object as a member variable */
  PclProcessor pcl_obj_;
};

#endif // end of include guard for OBJECT_HANDLING_CLASS_H_
