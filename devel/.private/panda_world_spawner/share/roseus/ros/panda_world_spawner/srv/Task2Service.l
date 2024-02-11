;; Auto-generated. Do not edit!


(when (boundp 'panda_world_spawner::Task2Service)
  (if (not (find-package "PANDA_WORLD_SPAWNER"))
    (make-package "PANDA_WORLD_SPAWNER"))
  (shadow 'Task2Service (find-package "PANDA_WORLD_SPAWNER")))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK2SERVICE")
  (make-package "PANDA_WORLD_SPAWNER::TASK2SERVICE"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK2SERVICEREQUEST")
  (make-package "PANDA_WORLD_SPAWNER::TASK2SERVICEREQUEST"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK2SERVICERESPONSE")
  (make-package "PANDA_WORLD_SPAWNER::TASK2SERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass panda_world_spawner::Task2ServiceRequest
  :super ros::object
  :slots (_basket_locs ))

(defmethod panda_world_spawner::Task2ServiceRequest
  (:init
   (&key
    ((:basket_locs __basket_locs) ())
    )
   (send-super :init)
   (setq _basket_locs __basket_locs)
   self)
  (:basket_locs
   (&rest __basket_locs)
   (if (keywordp (car __basket_locs))
       (send* _basket_locs __basket_locs)
     (progn
       (if __basket_locs (setq _basket_locs (car __basket_locs)))
       _basket_locs)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped[] _basket_locs
    (apply #'+ (send-all _basket_locs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped[] _basket_locs
     (write-long (length _basket_locs) s)
     (dolist (elem _basket_locs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped[] _basket_locs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _basket_locs (let (r) (dotimes (i n) (push (instance geometry_msgs::PointStamped :init) r)) r))
     (dolist (elem- _basket_locs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass panda_world_spawner::Task2ServiceResponse
  :super ros::object
  :slots (_basket_colours ))

(defmethod panda_world_spawner::Task2ServiceResponse
  (:init
   (&key
    ((:basket_colours __basket_colours) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _basket_colours __basket_colours)
   self)
  (:basket_colours
   (&optional __basket_colours)
   (if __basket_colours (setq _basket_colours __basket_colours)) _basket_colours)
  (:serialization-length
   ()
   (+
    ;; string[] _basket_colours
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _basket_colours)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _basket_colours
     (write-long (length _basket_colours) s)
     (dolist (elem _basket_colours)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _basket_colours
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _basket_colours (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _basket_colours i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass panda_world_spawner::Task2Service
  :super ros::object
  :slots ())

(setf (get panda_world_spawner::Task2Service :md5sum-) "a7aedf2afa2ac40fff84a9dc873ab94d")
(setf (get panda_world_spawner::Task2Service :datatype-) "panda_world_spawner/Task2Service")
(setf (get panda_world_spawner::Task2Service :request) panda_world_spawner::Task2ServiceRequest)
(setf (get panda_world_spawner::Task2Service :response) panda_world_spawner::Task2ServiceResponse)

(defmethod panda_world_spawner::Task2ServiceRequest
  (:response () (instance panda_world_spawner::Task2ServiceResponse :init)))

(setf (get panda_world_spawner::Task2ServiceRequest :md5sum-) "a7aedf2afa2ac40fff84a9dc873ab94d")
(setf (get panda_world_spawner::Task2ServiceRequest :datatype-) "panda_world_spawner/Task2ServiceRequest")
(setf (get panda_world_spawner::Task2ServiceRequest :definition-)
      "geometry_msgs/PointStamped[] basket_locs

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
string[] basket_colours


")

(setf (get panda_world_spawner::Task2ServiceResponse :md5sum-) "a7aedf2afa2ac40fff84a9dc873ab94d")
(setf (get panda_world_spawner::Task2ServiceResponse :datatype-) "panda_world_spawner/Task2ServiceResponse")
(setf (get panda_world_spawner::Task2ServiceResponse :definition-)
      "geometry_msgs/PointStamped[] basket_locs

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
string[] basket_colours


")



(provide :panda_world_spawner/Task2Service "a7aedf2afa2ac40fff84a9dc873ab94d")


