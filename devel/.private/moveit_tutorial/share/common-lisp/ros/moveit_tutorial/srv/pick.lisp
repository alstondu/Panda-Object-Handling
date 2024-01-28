; Auto-generated. Do not edit!


(cl:in-package moveit_tutorial-srv)


;//! \htmlinclude pick-request.msg.html

(cl:defclass <pick-request> (roslisp-msg-protocol:ros-message)
  ((grasp_point
    :reader grasp_point
    :initarg :grasp_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass pick-request (<pick-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pick-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pick-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_tutorial-srv:<pick-request> is deprecated: use moveit_tutorial-srv:pick-request instead.")))

(cl:ensure-generic-function 'grasp_point-val :lambda-list '(m))
(cl:defmethod grasp_point-val ((m <pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_tutorial-srv:grasp_point-val is deprecated.  Use moveit_tutorial-srv:grasp_point instead.")
  (grasp_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pick-request>) ostream)
  "Serializes a message object of type '<pick-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pick-request>) istream)
  "Deserializes a message object of type '<pick-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pick-request>)))
  "Returns string type for a service object of type '<pick-request>"
  "moveit_tutorial/pickRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pick-request)))
  "Returns string type for a service object of type 'pick-request"
  "moveit_tutorial/pickRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pick-request>)))
  "Returns md5sum for a message object of type '<pick-request>"
  "24f5679e0a52d4e75d20787acf70c895")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pick-request)))
  "Returns md5sum for a message object of type 'pick-request"
  "24f5679e0a52d4e75d20787acf70c895")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pick-request>)))
  "Returns full string definition for message of type '<pick-request>"
  (cl:format cl:nil "geometry_msgs/Point grasp_point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pick-request)))
  "Returns full string definition for message of type 'pick-request"
  (cl:format cl:nil "geometry_msgs/Point grasp_point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pick-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pick-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pick-request
    (cl:cons ':grasp_point (grasp_point msg))
))
;//! \htmlinclude pick-response.msg.html

(cl:defclass <pick-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pick-response (<pick-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pick-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pick-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moveit_tutorial-srv:<pick-response> is deprecated: use moveit_tutorial-srv:pick-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <pick-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moveit_tutorial-srv:success-val is deprecated.  Use moveit_tutorial-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pick-response>) ostream)
  "Serializes a message object of type '<pick-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pick-response>) istream)
  "Deserializes a message object of type '<pick-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pick-response>)))
  "Returns string type for a service object of type '<pick-response>"
  "moveit_tutorial/pickResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pick-response)))
  "Returns string type for a service object of type 'pick-response"
  "moveit_tutorial/pickResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pick-response>)))
  "Returns md5sum for a message object of type '<pick-response>"
  "24f5679e0a52d4e75d20787acf70c895")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pick-response)))
  "Returns md5sum for a message object of type 'pick-response"
  "24f5679e0a52d4e75d20787acf70c895")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pick-response>)))
  "Returns full string definition for message of type '<pick-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pick-response)))
  "Returns full string definition for message of type 'pick-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pick-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pick-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pick-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pick)))
  'pick-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pick)))
  'pick-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pick)))
  "Returns string type for a service object of type '<pick>"
  "moveit_tutorial/pick")