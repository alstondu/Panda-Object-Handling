;; Auto-generated. Do not edit!


(when (boundp 'panda_world_spawner::Task3Service)
  (if (not (find-package "PANDA_WORLD_SPAWNER"))
    (make-package "PANDA_WORLD_SPAWNER"))
  (shadow 'Task3Service (find-package "PANDA_WORLD_SPAWNER")))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK3SERVICE")
  (make-package "PANDA_WORLD_SPAWNER::TASK3SERVICE"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK3SERVICEREQUEST")
  (make-package "PANDA_WORLD_SPAWNER::TASK3SERVICEREQUEST"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASK3SERVICERESPONSE")
  (make-package "PANDA_WORLD_SPAWNER::TASK3SERVICERESPONSE"))

(in-package "ROS")





(defclass panda_world_spawner::Task3ServiceRequest
  :super ros::object
  :slots ())

(defmethod panda_world_spawner::Task3ServiceRequest
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

(defclass panda_world_spawner::Task3ServiceResponse
  :super ros::object
  :slots ())

(defmethod panda_world_spawner::Task3ServiceResponse
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

(defclass panda_world_spawner::Task3Service
  :super ros::object
  :slots ())

(setf (get panda_world_spawner::Task3Service :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get panda_world_spawner::Task3Service :datatype-) "panda_world_spawner/Task3Service")
(setf (get panda_world_spawner::Task3Service :request) panda_world_spawner::Task3ServiceRequest)
(setf (get panda_world_spawner::Task3Service :response) panda_world_spawner::Task3ServiceResponse)

(defmethod panda_world_spawner::Task3ServiceRequest
  (:response () (instance panda_world_spawner::Task3ServiceResponse :init)))

(setf (get panda_world_spawner::Task3ServiceRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get panda_world_spawner::Task3ServiceRequest :datatype-) "panda_world_spawner/Task3ServiceRequest")
(setf (get panda_world_spawner::Task3ServiceRequest :definition-)
      "
---


")

(setf (get panda_world_spawner::Task3ServiceResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get panda_world_spawner::Task3ServiceResponse :datatype-) "panda_world_spawner/Task3ServiceResponse")
(setf (get panda_world_spawner::Task3ServiceResponse :definition-)
      "
---


")



(provide :panda_world_spawner/Task3Service "d41d8cd98f00b204e9800998ecf8427e")


