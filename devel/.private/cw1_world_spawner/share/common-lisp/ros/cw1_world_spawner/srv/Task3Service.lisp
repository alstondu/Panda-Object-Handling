; Auto-generated. Do not edit!


(cl:in-package cw1_world_spawner-srv)


;//! \htmlinclude Task3Service-request.msg.html

(cl:defclass <Task3Service-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Task3Service-request (<Task3Service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task3Service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task3Service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1_world_spawner-srv:<Task3Service-request> is deprecated: use cw1_world_spawner-srv:Task3Service-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task3Service-request>) ostream)
  "Serializes a message object of type '<Task3Service-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task3Service-request>) istream)
  "Deserializes a message object of type '<Task3Service-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task3Service-request>)))
  "Returns string type for a service object of type '<Task3Service-request>"
  "cw1_world_spawner/Task3ServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task3Service-request)))
  "Returns string type for a service object of type 'Task3Service-request"
  "cw1_world_spawner/Task3ServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task3Service-request>)))
  "Returns md5sum for a message object of type '<Task3Service-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task3Service-request)))
  "Returns md5sum for a message object of type 'Task3Service-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task3Service-request>)))
  "Returns full string definition for message of type '<Task3Service-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task3Service-request)))
  "Returns full string definition for message of type 'Task3Service-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task3Service-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task3Service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Task3Service-request
))
;//! \htmlinclude Task3Service-response.msg.html

(cl:defclass <Task3Service-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Task3Service-response (<Task3Service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task3Service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task3Service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1_world_spawner-srv:<Task3Service-response> is deprecated: use cw1_world_spawner-srv:Task3Service-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task3Service-response>) ostream)
  "Serializes a message object of type '<Task3Service-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task3Service-response>) istream)
  "Deserializes a message object of type '<Task3Service-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task3Service-response>)))
  "Returns string type for a service object of type '<Task3Service-response>"
  "cw1_world_spawner/Task3ServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task3Service-response)))
  "Returns string type for a service object of type 'Task3Service-response"
  "cw1_world_spawner/Task3ServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task3Service-response>)))
  "Returns md5sum for a message object of type '<Task3Service-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task3Service-response)))
  "Returns md5sum for a message object of type 'Task3Service-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task3Service-response>)))
  "Returns full string definition for message of type '<Task3Service-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task3Service-response)))
  "Returns full string definition for message of type 'Task3Service-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task3Service-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task3Service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Task3Service-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Task3Service)))
  'Task3Service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Task3Service)))
  'Task3Service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task3Service)))
  "Returns string type for a service object of type '<Task3Service>"
  "cw1_world_spawner/Task3Service")