;; Auto-generated. Do not edit!


(when (boundp 'moveit_solution::set_gripper)
  (if (not (find-package "MOVEIT_SOLUTION"))
    (make-package "MOVEIT_SOLUTION"))
  (shadow 'set_gripper (find-package "MOVEIT_SOLUTION")))
(unless (find-package "MOVEIT_SOLUTION::SET_GRIPPER")
  (make-package "MOVEIT_SOLUTION::SET_GRIPPER"))
(unless (find-package "MOVEIT_SOLUTION::SET_GRIPPERREQUEST")
  (make-package "MOVEIT_SOLUTION::SET_GRIPPERREQUEST"))
(unless (find-package "MOVEIT_SOLUTION::SET_GRIPPERRESPONSE")
  (make-package "MOVEIT_SOLUTION::SET_GRIPPERRESPONSE"))

(in-package "ROS")





(defclass moveit_solution::set_gripperRequest
  :super ros::object
  :slots (_finger_distance ))

(defmethod moveit_solution::set_gripperRequest
  (:init
   (&key
    ((:finger_distance __finger_distance) 0.0)
    )
   (send-super :init)
   (setq _finger_distance (float __finger_distance))
   self)
  (:finger_distance
   (&optional __finger_distance)
   (if __finger_distance (setq _finger_distance __finger_distance)) _finger_distance)
  (:serialization-length
   ()
   (+
    ;; float64 _finger_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _finger_distance
       (sys::poke _finger_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _finger_distance
     (setq _finger_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass moveit_solution::set_gripperResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_solution::set_gripperResponse
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

(defclass moveit_solution::set_gripper
  :super ros::object
  :slots ())

(setf (get moveit_solution::set_gripper :md5sum-) "a328c0db6d1f73db097d15f13b92a27a")
(setf (get moveit_solution::set_gripper :datatype-) "moveit_solution/set_gripper")
(setf (get moveit_solution::set_gripper :request) moveit_solution::set_gripperRequest)
(setf (get moveit_solution::set_gripper :response) moveit_solution::set_gripperResponse)

(defmethod moveit_solution::set_gripperRequest
  (:response () (instance moveit_solution::set_gripperResponse :init)))

(setf (get moveit_solution::set_gripperRequest :md5sum-) "a328c0db6d1f73db097d15f13b92a27a")
(setf (get moveit_solution::set_gripperRequest :datatype-) "moveit_solution/set_gripperRequest")
(setf (get moveit_solution::set_gripperRequest :definition-)
      "float64 finger_distance
---
bool success
")

(setf (get moveit_solution::set_gripperResponse :md5sum-) "a328c0db6d1f73db097d15f13b92a27a")
(setf (get moveit_solution::set_gripperResponse :datatype-) "moveit_solution/set_gripperResponse")
(setf (get moveit_solution::set_gripperResponse :definition-)
      "float64 finger_distance
---
bool success
")



(provide :moveit_solution/set_gripper "a328c0db6d1f73db097d15f13b92a27a")


