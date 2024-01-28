;; Auto-generated. Do not edit!


(when (boundp 'moveit_tutorial::pick)
  (if (not (find-package "MOVEIT_TUTORIAL"))
    (make-package "MOVEIT_TUTORIAL"))
  (shadow 'pick (find-package "MOVEIT_TUTORIAL")))
(unless (find-package "MOVEIT_TUTORIAL::PICK")
  (make-package "MOVEIT_TUTORIAL::PICK"))
(unless (find-package "MOVEIT_TUTORIAL::PICKREQUEST")
  (make-package "MOVEIT_TUTORIAL::PICKREQUEST"))
(unless (find-package "MOVEIT_TUTORIAL::PICKRESPONSE")
  (make-package "MOVEIT_TUTORIAL::PICKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass moveit_tutorial::pickRequest
  :super ros::object
  :slots (_grasp_point ))

(defmethod moveit_tutorial::pickRequest
  (:init
   (&key
    ((:grasp_point __grasp_point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _grasp_point __grasp_point)
   self)
  (:grasp_point
   (&rest __grasp_point)
   (if (keywordp (car __grasp_point))
       (send* _grasp_point __grasp_point)
     (progn
       (if __grasp_point (setq _grasp_point (car __grasp_point)))
       _grasp_point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _grasp_point
    (send _grasp_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _grasp_point
       (send _grasp_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _grasp_point
     (send _grasp_point :deserialize buf ptr-) (incf ptr- (send _grasp_point :serialization-length))
   ;;
   self)
  )

(defclass moveit_tutorial::pickResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_tutorial::pickResponse
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

(defclass moveit_tutorial::pick
  :super ros::object
  :slots ())

(setf (get moveit_tutorial::pick :md5sum-) "24f5679e0a52d4e75d20787acf70c895")
(setf (get moveit_tutorial::pick :datatype-) "moveit_tutorial/pick")
(setf (get moveit_tutorial::pick :request) moveit_tutorial::pickRequest)
(setf (get moveit_tutorial::pick :response) moveit_tutorial::pickResponse)

(defmethod moveit_tutorial::pickRequest
  (:response () (instance moveit_tutorial::pickResponse :init)))

(setf (get moveit_tutorial::pickRequest :md5sum-) "24f5679e0a52d4e75d20787acf70c895")
(setf (get moveit_tutorial::pickRequest :datatype-) "moveit_tutorial/pickRequest")
(setf (get moveit_tutorial::pickRequest :definition-)
      "geometry_msgs/Point grasp_point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")

(setf (get moveit_tutorial::pickResponse :md5sum-) "24f5679e0a52d4e75d20787acf70c895")
(setf (get moveit_tutorial::pickResponse :datatype-) "moveit_tutorial/pickResponse")
(setf (get moveit_tutorial::pickResponse :definition-)
      "geometry_msgs/Point grasp_point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success

")



(provide :moveit_tutorial/pick "24f5679e0a52d4e75d20787acf70c895")


