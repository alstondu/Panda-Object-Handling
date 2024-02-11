;; Auto-generated. Do not edit!


(when (boundp 'panda_world_spawner::Task1Service)
  (if (not (find-package "PANDA_WORLD_SPAWNER"))
    (make-package "PANDA_WORLD_SPAWNER"))
  (shadow 'Task1Service (find-package "PANDA_WORLD_SPAWNER")))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK1SERVICE")
  (make-package "PANDA_WORLD_SPAWNER::TASK1SERVICE"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK1SERVICEREQUEST")
  (make-package "PANDA_WORLD_SPAWNER::TASK1SERVICEREQUEST"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK1SERVICERESPONSE")
  (make-package "PANDA_WORLD_SPAWNER::TASK1SERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass panda_world_spawner::Task1ServiceRequest
  :super ros::object
  :slots (_object_loc _goal_loc ))

(defmethod panda_world_spawner::Task1ServiceRequest
  (:init
   (&key
    ((:object_loc __object_loc) (instance geometry_msgs::PoseStamped :init))
    ((:goal_loc __goal_loc) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _object_loc __object_loc)
   (setq _goal_loc __goal_loc)
   self)
  (:object_loc
   (&rest __object_loc)
   (if (keywordp (car __object_loc))
       (send* _object_loc __object_loc)
     (progn
       (if __object_loc (setq _object_loc (car __object_loc)))
       _object_loc)))
  (:goal_loc
   (&rest __goal_loc)
   (if (keywordp (car __goal_loc))
       (send* _goal_loc __goal_loc)
     (progn
       (if __goal_loc (setq _goal_loc (car __goal_loc)))
       _goal_loc)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _object_loc
    (send _object_loc :serialization-length)
    ;; geometry_msgs/PointStamped _goal_loc
    (send _goal_loc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _object_loc
       (send _object_loc :serialize s)
     ;; geometry_msgs/PointStamped _goal_loc
       (send _goal_loc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _object_loc
     (send _object_loc :deserialize buf ptr-) (incf ptr- (send _object_loc :serialization-length))
   ;; geometry_msgs/PointStamped _goal_loc
     (send _goal_loc :deserialize buf ptr-) (incf ptr- (send _goal_loc :serialization-length))
   ;;
   self)
  )

(defclass panda_world_spawner::Task1ServiceResponse
  :super ros::object
  :slots ())

(defmethod panda_world_spawner::Task1ServiceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass panda_world_spawner::Task1Service
  :super ros::object
  :slots ())

(setf (get panda_world_spawner::Task1Service :md5sum-) "f2ce7f945836acb742f2f7bc16c06e3c")
(setf (get panda_world_spawner::Task1Service :datatype-) "panda_world_spawner/Task1Service")
(setf (get panda_world_spawner::Task1Service :request) panda_world_spawner::Task1ServiceRequest)
(setf (get panda_world_spawner::Task1Service :response) panda_world_spawner::Task1ServiceResponse)

(defmethod panda_world_spawner::Task1ServiceRequest
  (:response () (instance panda_world_spawner::Task1ServiceResponse :init)))

(setf (get panda_world_spawner::Task1ServiceRequest :md5sum-) "f2ce7f945836acb742f2f7bc16c06e3c")
(setf (get panda_world_spawner::Task1ServiceRequest :datatype-) "panda_world_spawner/Task1ServiceRequest")
(setf (get panda_world_spawner::Task1ServiceRequest :definition-)
      "geometry_msgs/PoseStamped object_loc
geometry_msgs/PointStamped goal_loc

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point
---

")

(setf (get panda_world_spawner::Task1ServiceResponse :md5sum-) "f2ce7f945836acb742f2f7bc16c06e3c")
(setf (get panda_world_spawner::Task1ServiceResponse :datatype-) "panda_world_spawner/Task1ServiceResponse")
(setf (get panda_world_spawner::Task1ServiceResponse :definition-)
      "geometry_msgs/PoseStamped object_loc
geometry_msgs/PointStamped goal_loc

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point
---

")



(provide :panda_world_spawner/Task1Service "f2ce7f945836acb742f2f7bc16c06e3c")


