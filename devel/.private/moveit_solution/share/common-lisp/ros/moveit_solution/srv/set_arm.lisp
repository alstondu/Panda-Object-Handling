; Auto-generated. Do not edit!


(cl:in-package moveit_solution-srv)


;//! \htmlinclude set_arm-request.msg.html

(cl:defclass <set_arm-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass set_arm-request (<set_arm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_arm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_arm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_solution-srv:<set_arm-request> is deprecated: use moveit_solution-srv:set_arm-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <set_arm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:pose-val is deprecated.  Use moveit_solution-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_arm-request>) ostream)
  "Serializes a message object of type '<set_arm-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_arm-request>) istream)
  "Deserializes a message object of type '<set_arm-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_arm-request>)))
  "Returns string type for a service object of type '<set_arm-request>"
  "moveit_solution/set_armRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_arm-request)))
  "Returns string type for a service object of type 'set_arm-request"
  "moveit_solution/set_armRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_arm-request>)))
  "Returns md5sum for a message object of type '<set_arm-request>"
  "b66f4c8c2fa81b98544cf0f3e10950ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_arm-request)))
  "Returns md5sum for a message object of type 'set_arm-request"
  "b66f4c8c2fa81b98544cf0f3e10950ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_arm-request>)))
  "Returns full string definition for message of type '<set_arm-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_arm-request)))
  "Returns full string definition for message of type 'set_arm-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_arm-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_arm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_arm-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude set_arm-response.msg.html

(cl:defclass <set_arm-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_arm-response (<set_arm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_arm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_arm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_solution-srv:<set_arm-response> is deprecated: use moveit_solution-srv:set_arm-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_arm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_solution-srv:success-val is deprecated.  Use moveit_solution-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_arm-response>) ostream)
  "Serializes a message object of type '<set_arm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_arm-response>) istream)
  "Deserializes a message object of type '<set_arm-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_arm-response>)))
  "Returns string type for a service object of type '<set_arm-response>"
  "moveit_solution/set_armResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_arm-response)))
  "Returns string type for a service object of type 'set_arm-response"
  "moveit_solution/set_armResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_arm-response>)))
  "Returns md5sum for a message object of type '<set_arm-response>"
  "b66f4c8c2fa81b98544cf0f3e10950ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_arm-response)))
  "Returns md5sum for a message object of type 'set_arm-response"
  "b66f4c8c2fa81b98544cf0f3e10950ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_arm-response>)))
  "Returns full string definition for message of type '<set_arm-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_arm-response)))
  "Returns full string definition for message of type 'set_arm-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_arm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_arm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_arm-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_arm)))
  'set_arm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_arm)))
  'set_arm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_arm)))
  "Returns string type for a service object of type '<set_arm>"
  "moveit_solution/set_arm")