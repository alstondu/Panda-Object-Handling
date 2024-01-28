;; Auto-generated. Do not edit!


(when (boundp 'moveit_solution::set_arm)
  (if (not (find-package "MOVEIT_SOLUTION"))
    (make-package "MOVEIT_SOLUTION"))
  (shadow 'set_arm (find-package "MOVEIT_SOLUTION")))
(unless (find-package "MOVEIT_SOLUTION::SET_ARM")
  (make-package "MOVEIT_SOLUTION::SET_ARM"))
(unless (find-package "MOVEIT_SOLUTION::SET_ARMREQUEST")
  (make-package "MOVEIT_SOLUTION::SET_ARMREQUEST"))
(unless (find-package "MOVEIT_SOLUTION::SET_ARMRESPONSE")
  (make-package "MOVEIT_SOLUTION::SET_ARMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass moveit_solution::set_armRequest
  :super ros::object
  :slots (_pose ))

(defmethod moveit_solution::set_armRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass moveit_solution::set_armResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_solution::set_armResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass moveit_solution::set_arm
  :super ros::object
  :slots ())

(setf (get moveit_solution::set_arm :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get moveit_solution::set_arm :datatype-) "moveit_solution/set_arm")
(setf (get moveit_solution::set_arm :request) moveit_solution::set_armRequest)
(setf (get moveit_solution::set_arm :response) moveit_solution::set_armResponse)

(defmethod moveit_solution::set_armRequest
  (:response () (instance moveit_solution::set_armResponse :init)))

(setf (get moveit_solution::set_armRequest :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get moveit_solution::set_armRequest :datatype-) "moveit_solution/set_armRequest")
(setf (get moveit_solution::set_armRequest :definition-)
      "geometry_msgs/Pose pose

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
---
bool success

")

(setf (get moveit_solution::set_armResponse :md5sum-) "b66f4c8c2fa81b98544cf0f3e10950ee")
(setf (get moveit_solution::set_armResponse :datatype-) "moveit_solution/set_armResponse")
(setf (get moveit_solution::set_armResponse :definition-)
      "geometry_msgs/Pose pose

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
---
bool success

")



(provide :moveit_solution/set_arm "b66f4c8c2fa81b98544cf0f3e10950ee")


