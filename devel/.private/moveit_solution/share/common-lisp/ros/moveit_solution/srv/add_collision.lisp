; Auto-generated. Do not edit!


(cl:in-package moveit_solution-srv)


;//! \htmlinclude add_collision-request.msg.html

(cl:defclass <add_collision-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (centre
    :reader centre
    :initarg :centre
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass add_collision-request (<add_collision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_collision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_collision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_solution-srv:<add_collision-request> is deprecated: use moveit_solution-srv:add_collision-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <add_collision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:object_name-val is deprecated.  Use moveit_solution-srv:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'centre-val :lambda-list '(m))
(cl:defmethod centre-val ((m <add_collision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:centre-val is deprecated.  Use moveit_solution-srv:centre instead.")
  (centre m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <add_collision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:dimensions-val is deprecated.  Use moveit_solution-srv:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <add_collision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:orientation-val is deprecated.  Use moveit_solution-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_collision-request>) ostream)
  "Serializes a message object of type '<add_collision-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centre) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_collision-request>) istream)
  "Deserializes a message object of type '<add_collision-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centre) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_collision-request>)))
  "Returns string type for a service object of type '<add_collision-request>"
  "moveit_solution/add_collisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_collision-request)))
  "Returns string type for a service object of type 'add_collision-request"
  "moveit_solution/add_collisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_collision-request>)))
  "Returns md5sum for a message object of type '<add_collision-request>"
  "b380d5e794a5c8669b06015af1098b91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_collision-request)))
  "Returns md5sum for a message object of type 'add_collision-request"
  "b380d5e794a5c8669b06015af1098b91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_collision-request>)))
  "Returns full string definition for message of type '<add_collision-request>"
  (cl:format cl:nil "string object_name~%geometry_msgs/Point centre~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_collision-request)))
  "Returns full string definition for message of type 'add_collision-request"
  (cl:format cl:nil "string object_name~%geometry_msgs/Point centre~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_collision-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centre))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_collision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_collision-request
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':centre (centre msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':orientation (orientation msg))
))
;//! \htmlinclude add_collision-response.msg.html

(cl:defclass <add_collision-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass add_collision-response (<add_collision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_collision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_collision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_solution-srv:<add_collision-response> is deprecated: use moveit_solution-srv:add_collision-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <add_collision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:success-val is deprecated.  Use moveit_solution-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_collision-response>) ostream)
  "Serializes a message object of type '<add_collision-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_collision-response>) istream)
  "Deserializes a message object of type '<add_collision-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_collision-response>)))
  "Returns string type for a service object of type '<add_collision-response>"
  "moveit_solution/add_collisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_collision-response)))
  "Returns string type for a service object of type 'add_collision-response"
  "moveit_solution/add_collisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_collision-response>)))
  "Returns md5sum for a message object of type '<add_collision-response>"
  "b380d5e794a5c8669b06015af1098b91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_collision-response)))
  "Returns md5sum for a message object of type 'add_collision-response"
  "b380d5e794a5c8669b06015af1098b91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_collision-response>)))
  "Returns full string definition for message of type '<add_collision-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_collision-response)))
  "Returns full string definition for message of type 'add_collision-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_collision-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_collision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_collision-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_collision)))
  'add_collision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_collision)))
  'add_collision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_collision)))
  "Returns string type for a service object of type '<add_collision>"
  "moveit_solution/add_collision")