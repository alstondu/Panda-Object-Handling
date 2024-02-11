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

#include <object_handling_class.h>

int main(int argc, char **argv)
{

  ros::init(argc, argv, "solution_node");
  ros::NodeHandle nh_p("~");

  // create an instance of the object_handling class
  Object_Handling object_handling_class(nh_p);

  // MoveIt! requirement for non-blocking group.move()
  ros::AsyncSpinner spinner(1);
  spinner.start();

  // Create a ROS subscriber for the input point cloud
  ros::Subscriber sub_cloud =
      nh_p.subscribe("/r200/camera/depth_registered/points",
                     1,
                     &PclProcessor::pclCallback,
                     &object_handling_class.pcl_obj_);

  // loop rate in Hz
  ros::Rate rate(30);

  while (ros::ok())
  {

    // spin and process all pending callbacks
    ros::spinOnce();

    // sleep to fulfill the loop rate
    rate.sleep();
  }
}
