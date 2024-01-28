;; Auto-generated. Do not edit!


(when (boundp 'moveit_tutorial::remove_collision)
  (if (not (find-package "MOVEIT_TUTORIAL"))
    (make-package "MOVEIT_TUTORIAL"))
  (shadow 'remove_collision (find-package "MOVEIT_TUTORIAL")))
(unless (find-package "MOVEIT_TUTORIAL::REMOVE_COLLISION")
  (make-package "MOVEIT_TUTORIAL::REMOVE_COLLISION"))
(unless (find-package "MOVEIT_TUTORIAL::REMOVE_COLLISIONREQUEST")
  (make-package "MOVEIT_TUTORIAL::REMOVE_COLLISIONREQUEST"))
(unless (find-package "MOVEIT_TUTORIAL::REMOVE_COLLISIONRESPONSE")
  (make-package "MOVEIT_TUTORIAL::REMOVE_COLLISIONRESPONSE"))

(in-package "ROS")





(defclass moveit_tutorial::remove_collisionRequest
  :super ros::object
  :slots (_object_name ))

(defmethod moveit_tutorial::remove_collisionRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass moveit_tutorial::remove_collisionResponse
  :super ros::object
  :slots (_success ))

(defmethod moveit_tutorial::remove_collisionResponse
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

(defclass moveit_tutorial::remove_collision
  :super ros::object
  :slots ())

(setf (get moveit_tutorial::remove_collision :md5sum-) "bc93e0d7ed716275a8d9336d083ffb50")
(setf (get moveit_tutorial::remove_collision :datatype-) "moveit_tutorial/remove_collision")
(setf (get moveit_tutorial::remove_collision :request) moveit_tutorial::remove_collisionRequest)
(setf (get moveit_tutorial::remove_collision :response) moveit_tutorial::remove_collisionResponse)

(defmethod moveit_tutorial::remove_collisionRequest
  (:response () (instance moveit_tutorial::remove_collisionResponse :init)))

(setf (get moveit_tutorial::remove_collisionRequest :md5sum-) "bc93e0d7ed716275a8d9336d083ffb50")
(setf (get moveit_tutorial::remove_collisionRequest :datatype-) "moveit_tutorial/remove_collisionRequest")
(setf (get moveit_tutorial::remove_collisionRequest :definition-)
      "string object_name
---
bool success
")

(setf (get moveit_tutorial::remove_collisionResponse :md5sum-) "bc93e0d7ed716275a8d9336d083ffb50")
(setf (get moveit_tutorial::remove_collisionResponse :datatype-) "moveit_tutorial/remove_collisionResponse")
(setf (get moveit_tutorial::remove_collisionResponse :definition-)
      "string object_name
---
bool success
")



(provide :moveit_tutorial/remove_collision "bc93e0d7ed716275a8d9336d083ffb50")


