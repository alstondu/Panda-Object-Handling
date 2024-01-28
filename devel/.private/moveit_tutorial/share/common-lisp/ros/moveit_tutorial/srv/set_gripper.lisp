; Auto-generated. Do not edit!


(cl:in-package moveit_tutorial-srv)


;//! \htmlinclude set_gripper-request.msg.html

(cl:defclass <set_gripper-request> (roslisp-msg-protocol:ros-message)
  ((finger_distance
    :reader finger_distance
    :initarg :finger_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_gripper-request (<set_gripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_gripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_gripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_tutorial-srv:<set_gripper-request> is deprecated: use moveit_tutorial-srv:set_gripper-request instead.")))

(cl:ensure-generic-function 'finger_distance-val :lambda-list '(m))
(cl:defmethod finger_distance-val ((m <set_gripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_tutorial-srv:finger_distance-val is deprecated.  Use moveit_tutorial-srv:finger_distance instead.")
  (finger_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_gripper-request>) ostream)
  "Serializes a message object of type '<set_gripper-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'finger_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_gripper-request>) istream)
  "Deserializes a message object of type '<set_gripper-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finger_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_gripper-request>)))
  "Returns string type for a service object of type '<set_gripper-request>"
  "moveit_tutorial/set_gripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gripper-request)))
  "Returns string type for a service object of type 'set_gripper-request"
  "moveit_tutorial/set_gripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_gripper-request>)))
  "Returns md5sum for a message object of type '<set_gripper-request>"
  "a328c0db6d1f73db097d15f13b92a27a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_gripper-request)))
  "Returns md5sum for a message object of type 'set_gripper-request"
  "a328c0db6d1f73db097d15f13b92a27a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_gripper-request>)))
  "Returns full string definition for message of type '<set_gripper-request>"
  (cl:format cl:nil "float64 finger_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_gripper-request)))
  "Returns full string definition for message of type 'set_gripper-request"
  (cl:format cl:nil "float64 finger_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_gripper-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_gripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_gripper-request
    (cl:cons ':finger_distance (finger_distance msg))
))
;//! \htmlinclude set_gripper-response.msg.html

(cl:defclass <set_gripper-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_gripper-response (<set_gripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_gripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_gripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_tutorial-srv:<set_gripper-response> is deprecated: use moveit_tutorial-srv:set_gripper-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_gripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_tutorial-srv:success-val is deprecated.  Use moveit_tutorial-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_gripper-response>) ostream)
  "Serializes a message object of type '<set_gripper-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_gripper-response>) istream)
  "Deserializes a message object of type '<set_gripper-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_gripper-response>)))
  "Returns string type for a service object of type '<set_gripper-response>"
  "moveit_tutorial/set_gripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gripper-response)))
  "Returns string type for a service object of type 'set_gripper-response"
  "moveit_tutorial/set_gripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_gripper-response>)))
  "Returns md5sum for a message object of type '<set_gripper-response>"
  "a328c0db6d1f73db097d15f13b92a27a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_gripper-response)))
  "Returns md5sum for a message object of type 'set_gripper-response"
  "a328c0db6d1f73db097d15f13b92a27a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_gripper-response>)))
  "Returns full string definition for message of type '<set_gripper-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_gripper-response)))
  "Returns full string definition for message of type 'set_gripper-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_gripper-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_gripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_gripper-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_gripper)))
  'set_gripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_gripper)))
  'set_gripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_gripper)))
  "Returns string type for a service object of type '<set_gripper>"
  "moveit_tutorial/set_gripper")