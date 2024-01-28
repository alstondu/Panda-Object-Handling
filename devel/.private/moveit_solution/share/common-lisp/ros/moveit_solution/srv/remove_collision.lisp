; Auto-generated. Do not edit!


(cl:in-package moveit_solution-srv)


;//! \htmlinclude remove_collision-request.msg.html

(cl:defclass <remove_collision-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass remove_collision-request (<remove_collision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <remove_collision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'remove_collision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_solution-srv:<remove_collision-request> is deprecated: use moveit_solution-srv:remove_collision-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <remove_collision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:object_name-val is deprecated.  Use moveit_solution-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <remove_collision-request>) ostream)
  "Serializes a message object of type '<remove_collision-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <remove_collision-request>) istream)
  "Deserializes a message object of type '<remove_collision-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<remove_collision-request>)))
  "Returns string type for a service object of type '<remove_collision-request>"
  "moveit_solution/remove_collisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remove_collision-request)))
  "Returns string type for a service object of type 'remove_collision-request"
  "moveit_solution/remove_collisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<remove_collision-request>)))
  "Returns md5sum for a message object of type '<remove_collision-request>"
  "bc93e0d7ed716275a8d9336d083ffb50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'remove_collision-request)))
  "Returns md5sum for a message object of type 'remove_collision-request"
  "bc93e0d7ed716275a8d9336d083ffb50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<remove_collision-request>)))
  "Returns full string definition for message of type '<remove_collision-request>"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'remove_collision-request)))
  "Returns full string definition for message of type 'remove_collision-request"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <remove_collision-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <remove_collision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'remove_collision-request
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude remove_collision-response.msg.html

(cl:defclass <remove_collision-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass remove_collision-response (<remove_collision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <remove_collision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'remove_collision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_solution-srv:<remove_collision-response> is deprecated: use moveit_solution-srv:remove_collision-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <remove_collision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:success-val is deprecated.  Use moveit_solution-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <remove_collision-response>) ostream)
  "Serializes a message object of type '<remove_collision-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <remove_collision-response>) istream)
  "Deserializes a message object of type '<remove_collision-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<remove_collision-response>)))
  "Returns string type for a service object of type '<remove_collision-response>"
  "moveit_solution/remove_collisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remove_collision-response)))
  "Returns string type for a service object of type 'remove_collision-response"
  "moveit_solution/remove_collisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<remove_collision-response>)))
  "Returns md5sum for a message object of type '<remove_collision-response>"
  "bc93e0d7ed716275a8d9336d083ffb50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'remove_collision-response)))
  "Returns md5sum for a message object of type 'remove_collision-response"
  "bc93e0d7ed716275a8d9336d083ffb50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<remove_collision-response>)))
  "Returns full string definition for message of type '<remove_collision-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'remove_collision-response)))
  "Returns full string definition for message of type 'remove_collision-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <remove_collision-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <remove_collision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'remove_collision-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'remove_collision)))
  'remove_collision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'remove_collision)))
  'remove_collision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remove_collision)))
  "Returns string type for a service object of type '<remove_collision>"
  "moveit_solution/remove_collision")