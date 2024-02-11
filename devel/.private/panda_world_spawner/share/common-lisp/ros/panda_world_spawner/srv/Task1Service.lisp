; Auto-generated. Do not edit!


(cl:in-package panda_world_spawner-srv)


;//! \htmlinclude Task1Service-request.msg.html

(cl:defclass <Task1Service-request> (roslisp-msg-protocol:ros-message)
  ((object_loc
    :reader object_loc
    :initarg :object_loc
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_loc
    :reader goal_loc
    :initarg :goal_loc
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass Task1Service-request (<Task1Service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task1Service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task1Service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_world_spawner-srv:<Task1Service-request> is deprecated: use panda_world_spawner-srv:Task1Service-request instead.")))

(cl:ensure-generic-function 'object_loc-val :lambda-list '(m))
(cl:defmethod object_loc-val ((m <Task1Service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_world_spawner-srv:object_loc-val is deprecated.  Use panda_world_spawner-srv:object_loc instead.")
  (object_loc m))

(cl:ensure-generic-function 'goal_loc-val :lambda-list '(m))
(cl:defmethod goal_loc-val ((m <Task1Service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_world_spawner-srv:goal_loc-val is deprecated.  Use panda_world_spawner-srv:goal_loc instead.")
  (goal_loc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task1Service-request>) ostream)
  "Serializes a message object of type '<Task1Service-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_loc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_loc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task1Service-request>) istream)
  "Deserializes a message object of type '<Task1Service-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_loc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_loc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task1Service-request>)))
  "Returns string type for a service object of type '<Task1Service-request>"
  "panda_world_spawner/Task1ServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task1Service-request)))
  "Returns string type for a service object of type 'Task1Service-request"
  "panda_world_spawner/Task1ServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task1Service-request>)))
  "Returns md5sum for a message object of type '<Task1Service-request>"
  "f2ce7f945836acb742f2f7bc16c06e3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task1Service-request)))
  "Returns md5sum for a message object of type 'Task1Service-request"
  "f2ce7f945836acb742f2f7bc16c06e3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task1Service-request>)))
  "Returns full string definition for message of type '<Task1Service-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped object_loc~%geometry_msgs/PointStamped goal_loc~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task1Service-request)))
  "Returns full string definition for message of type 'Task1Service-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped object_loc~%geometry_msgs/PointStamped goal_loc~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task1Service-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_loc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_loc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task1Service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Task1Service-request
    (cl:cons ':object_loc (object_loc msg))
    (cl:cons ':goal_loc (goal_loc msg))
))
;//! \htmlinclude Task1Service-response.msg.html

(cl:defclass <Task1Service-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Task1Service-response (<Task1Service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task1Service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task1Service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_world_spawner-srv:<Task1Service-response> is deprecated: use panda_world_spawner-srv:Task1Service-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task1Service-response>) ostream)
  "Serializes a message object of type '<Task1Service-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task1Service-response>) istream)
  "Deserializes a message object of type '<Task1Service-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task1Service-response>)))
  "Returns string type for a service object of type '<Task1Service-response>"
  "panda_world_spawner/Task1ServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task1Service-response)))
  "Returns string type for a service object of type 'Task1Service-response"
  "panda_world_spawner/Task1ServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task1Service-response>)))
  "Returns md5sum for a message object of type '<Task1Service-response>"
  "f2ce7f945836acb742f2f7bc16c06e3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task1Service-response)))
  "Returns md5sum for a message object of type 'Task1Service-response"
  "f2ce7f945836acb742f2f7bc16c06e3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task1Service-response>)))
  "Returns full string definition for message of type '<Task1Service-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task1Service-response)))
  "Returns full string definition for message of type 'Task1Service-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task1Service-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task1Service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Task1Service-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Task1Service)))
  'Task1Service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Task1Service)))
  'Task1Service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task1Service)))
  "Returns string type for a service object of type '<Task1Service>"
  "panda_world_spawner/Task1Service")