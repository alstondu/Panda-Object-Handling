;; Auto-generated. Do not edit!


(when (boundp 'panda_world_spawner::TaskSetup)
  (if (not (find-package "PANDA_WORLD_SPAWNER"))
    (make-package "PANDA_WORLD_SPAWNER"))
  (shadow 'TaskSetup (find-package "PANDA_WORLD_SPAWNER")))
(unless (find-package "PANDA_WORLD_SPAWNER::TASKSETUP")
  (make-package "PANDA_WORLD_SPAWNER::TASKSETUP"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASKSETUPREQUEST")
  (make-package "PANDA_WORLD_SPAWNER::TASKSETUPREQUEST"))
(unless (find-package "PANDA_WORLD_SPAWNER::TASKSETUPRESPONSE")
  (make-package "PANDA_WORLD_SPAWNER::TASKSETUPRESPONSE"))

(in-package "ROS")





(defclass panda_world_spawner::TaskSetupRequest
  :super ros::object
  :slots (_task_index ))

(defmethod panda_world_spawner::TaskSetupRequest
  (:init
   (&key
    ((:task_index __task_index) 0)
    )
   (send-super :init)
   (setq _task_index (round __task_index))
   self)
  (:task_index
   (&optional __task_index)
   (if __task_index (setq _task_index __task_index)) _task_index)
  (:serialization-length
   ()
   (+
    ;; int8 _task_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _task_index
       (write-byte _task_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _task_index
     (setq _task_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _task_index 127) (setq _task_index (- _task_index 256)))
   ;;
   self)
  )

(defclass panda_world_spawner::TaskSetupResponse
  :super ros::object
  :slots ())

(defmethod panda_world_spawner::TaskSetupResponse
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

(defclass panda_world_spawner::TaskSetup
  :super ros::object
  :slots ())

(setf (get panda_world_spawner::TaskSetup :md5sum-) "713f50eb6979d6bda1389d9b25c308e0")
(setf (get panda_world_spawner::TaskSetup :datatype-) "panda_world_spawner/TaskSetup")
(setf (get panda_world_spawner::TaskSetup :request) panda_world_spawner::TaskSetupRequest)
(setf (get panda_world_spawner::TaskSetup :response) panda_world_spawner::TaskSetupResponse)

(defmethod panda_world_spawner::TaskSetupRequest
  (:response () (instance panda_world_spawner::TaskSetupResponse :init)))

(setf (get panda_world_spawner::TaskSetupRequest :md5sum-) "713f50eb6979d6bda1389d9b25c308e0")
(setf (get panda_world_spawner::TaskSetupRequest :datatype-) "panda_world_spawner/TaskSetupRequest")
(setf (get panda_world_spawner::TaskSetupRequest :definition-)
      "int8 task_index
---


")

(setf (get panda_world_spawner::TaskSetupResponse :md5sum-) "713f50eb6979d6bda1389d9b25c308e0")
(setf (get panda_world_spawner::TaskSetupResponse :datatype-) "panda_world_spawner/TaskSetupResponse")
(setf (get panda_world_spawner::TaskSetupResponse :definition-)
      "int8 task_index
---


")



(provide :panda_world_spawner/TaskSetup "713f50eb6979d6bda1389d9b25c308e0")


