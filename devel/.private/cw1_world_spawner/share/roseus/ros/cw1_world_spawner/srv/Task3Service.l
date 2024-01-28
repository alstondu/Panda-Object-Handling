;; Auto-generated. Do not edit!


(when (boundp 'cw1_world_spawner::Task3Service)
  (if (not (find-package "CW1_WORLD_SPAWNER"))
    (make-package "CW1_WORLD_SPAWNER"))
  (shadow 'Task3Service (find-package "CW1_WORLD_SPAWNER")))
(unless (find-package "CW1_WORLD_SPAWNER::TASK3SERVICE")
  (make-package "CW1_WORLD_SPAWNER::TASK3SERVICE"))
(unless (find-package "CW1_WORLD_SPAWNER::TASK3SERVICEREQUEST")
  (make-package "CW1_WORLD_SPAWNER::TASK3SERVICEREQUEST"))
(unless (find-package "CW1_WORLD_SPAWNER::TASK3SERVICERESPONSE")
  (make-package "CW1_WORLD_SPAWNER::TASK3SERVICERESPONSE"))

(in-package "ROS")





(defclass cw1_world_spawner::Task3ServiceRequest
  :super ros::object
  :slots ())

(defmethod cw1_world_spawner::Task3ServiceRequest
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

(defclass cw1_world_spawner::Task3ServiceResponse
  :super ros::object
  :slots ())

(defmethod cw1_world_spawner::Task3ServiceResponse
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

(defclass cw1_world_spawner::Task3Service
  :super ros::object
  :slots ())

(setf (get cw1_world_spawner::Task3Service :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1_world_spawner::Task3Service :datatype-) "cw1_world_spawner/Task3Service")
(setf (get cw1_world_spawner::Task3Service :request) cw1_world_spawner::Task3ServiceRequest)
(setf (get cw1_world_spawner::Task3Service :response) cw1_world_spawner::Task3ServiceResponse)

(defmethod cw1_world_spawner::Task3ServiceRequest
  (:response () (instance cw1_world_spawner::Task3ServiceResponse :init)))

(setf (get cw1_world_spawner::Task3ServiceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1_world_spawner::Task3ServiceRequest :datatype-) "cw1_world_spawner/Task3ServiceRequest")
(setf (get cw1_world_spawner::Task3ServiceRequest :definition-)
      "
---


")

(setf (get cw1_world_spawner::Task3ServiceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1_world_spawner::Task3ServiceResponse :datatype-) "cw1_world_spawner/Task3ServiceResponse")
(setf (get cw1_world_spawner::Task3ServiceResponse :definition-)
      "
---


")



(provide :cw1_world_spawner/Task3Service "d41d8cd98f00b204e9800998ecf8427e")


