;; Auto-generated. Do not edit!


(when (boundp 'moveit_solution::add_collision)
  (if (not (find-package "MOVEIT_SOLUTION"))
    (make-package "MOVEIT_SOLUTION"))
  (shadow 'add_collision (find-package "MOVEIT_SOLUTION")))
(unless (find-package "MOVEIT_SOLUTION::ADD_COLLISION")
  (make-package "MOVEIT_SOLUTION::ADD_COLLISION"))
(unless (find-package "MOVEIT_SOLUTION::ADD_COLLISIONREQUEST")
  (make-package "MOVEIT_SOLUTION::ADD_COLLISIONREQUEST"))
(unless (find-package "MOVEIT_SOLUTION::ADD_COLLISIONRESPONSE")
  (make-package "MOVEIT_SOLUTION::ADD_COLLISIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass moveit_solution::add_collisionRequest
  :super ros::object
  :slots (_object_name _centre _dimensions _orientation ))

(defmethod moveit_solution::add_collisionRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:centre __centre) (instance geometry_msgs::Point :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _centre __centre)
   (setq _dimensions __dimensions)
   (setq _orientation __orientation)
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:centre
   (&rest __centre)
   (if (keywordp (car __centre))
       (send* _centre __centre)
     (progn
       (if __centre (setq _centre (car __centre)))
       _centre)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; geometry_msgs/Point _centre
    (send _centre :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; geometry_msgs/Point _centre
       (send _centre :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _centre
     (send _centre :deserialize buf ptr-) (incf ptr- (send _centre :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(defclass moveit_solution::add_collisionResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_solution::add_collisionResponse
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

(defclass moveit_solution::add_collision
  :super ros::object
  :slots ())

(setf (get moveit_solution::add_collision :md5sum-) "b380d5e794a5c8669b06015af1098b91")
(setf (get moveit_solution::add_collision :datatype-) "moveit_solution/add_collision")
(setf (get moveit_solution::add_collision :request) moveit_solution::add_collisionRequest)
(setf (get moveit_solution::add_collision :response) moveit_solution::add_collisionResponse)

(defmethod moveit_solution::add_collisionRequest
  (:response () (instance moveit_solution::add_collisionResponse :init)))

(setf (get moveit_solution::add_collisionRequest :md5sum-) "b380d5e794a5c8669b06015af1098b91")
(setf (get moveit_solution::add_collisionRequest :datatype-) "moveit_solution/add_collisionRequest")
(setf (get moveit_solution::add_collisionRequest :definition-)
      "string object_name
geometry_msgs/Point centre
geometry_msgs/Vector3 dimensions
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

(setf (get moveit_solution::add_collisionResponse :md5sum-) "b380d5e794a5c8669b06015af1098b91")
(setf (get moveit_solution::add_collisionResponse :datatype-) "moveit_solution/add_collisionResponse")
(setf (get moveit_solution::add_collisionResponse :definition-)
      "string object_name
geometry_msgs/Point centre
geometry_msgs/Vector3 dimensions
geometry_msgs/Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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



(provide :moveit_solution/add_collision "b380d5e794a5c8669b06015af1098b91")


