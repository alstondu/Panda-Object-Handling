; Auto-generated. Do not edit!


(cl:in-package panda_world_spawner-srv)


;//! \htmlinclude Task2Service-request.msg.html

(cl:defclass <Task2Service-request> (roslisp-msg-protocol:ros-message)
  ((basket_locs
    :reader basket_locs
    :initarg :basket_locs
    :type (cl:vector geometry_msgs-msg:PointStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PointStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PointStamped))))
)

(cl:defclass Task2Service-request (<Task2Service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task2Service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task2Service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_world_spawner-srv:<Task2Service-request> is deprecated: use panda_world_spawner-srv:Task2Service-request instead.")))

(cl:ensure-generic-function 'basket_locs-val :lambda-list '(m))
(cl:defmethod basket_locs-val ((m <Task2Service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_world_spawner-srv:basket_locs-val is deprecated.  Use panda_world_spawner-srv:basket_locs instead.")
  (basket_locs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task2Service-request>) ostream)
  "Serializes a message object of type '<Task2Service-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'basket_locs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'basket_locs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task2Service-request>) istream)
  "Deserializes a message object of type '<Task2Service-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'basket_locs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'basket_locs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PointStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task2Service-request>)))
  "Returns string type for a service object of type '<Task2Service-request>"
  "panda_world_spawner/Task2ServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task2Service-request)))
  "Returns string type for a service object of type 'Task2Service-request"
  "panda_world_spawner/Task2ServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task2Service-request>)))
  "Returns md5sum for a message object of type '<Task2Service-request>"
  "a7aedf2afa2ac40fff84a9dc873ab94d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task2Service-request)))
  "Returns md5sum for a message object of type 'Task2Service-request"
  "a7aedf2afa2ac40fff84a9dc873ab94d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task2Service-request>)))
  "Returns full string definition for message of type '<Task2Service-request>"
  (cl:format cl:nil "geometry_msgs/PointStamped[] basket_locs~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task2Service-request)))
  "Returns full string definition for message of type 'Task2Service-request"
  (cl:format cl:nil "geometry_msgs/PointStamped[] basket_locs~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task2Service-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'basket_locs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task2Service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Task2Service-request
    (cl:cons ':basket_locs (basket_locs msg))
))
;//! \htmlinclude Task2Service-response.msg.html

(cl:defclass <Task2Service-response> (roslisp-msg-protocol:ros-message)
  ((basket_colours
    :reader basket_colours
    :initarg :basket_colours
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Task2Service-response (<Task2Service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task2Service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task2Service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name panda_world_spawner-srv:<Task2Service-response> is deprecated: use panda_world_spawner-srv:Task2Service-response instead.")))

(cl:ensure-generic-function 'basket_colours-val :lambda-list '(m))
(cl:defmethod basket_colours-val ((m <Task2Service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader panda_world_spawner-srv:basket_colours-val is deprecated.  Use panda_world_spawner-srv:basket_colours instead.")
  (basket_colours m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task2Service-response>) ostream)
  "Serializes a message object of type '<Task2Service-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'basket_colours))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'basket_colours))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task2Service-response>) istream)
  "Deserializes a message object of type '<Task2Service-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'basket_colours) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'basket_colours)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task2Service-response>)))
  "Returns string type for a service object of type '<Task2Service-response>"
  "panda_world_spawner/Task2ServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task2Service-response)))
  "Returns string type for a service object of type 'Task2Service-response"
  "panda_world_spawner/Task2ServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task2Service-response>)))
  "Returns md5sum for a message object of type '<Task2Service-response>"
  "a7aedf2afa2ac40fff84a9dc873ab94d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task2Service-response)))
  "Returns md5sum for a message object of type 'Task2Service-response"
  "a7aedf2afa2ac40fff84a9dc873ab94d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task2Service-response>)))
  "Returns full string definition for message of type '<Task2Service-response>"
  (cl:format cl:nil "string[] basket_colours~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task2Service-response)))
  "Returns full string definition for message of type 'Task2Service-response"
  (cl:format cl:nil "string[] basket_colours~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task2Service-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'basket_colours) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task2Service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Task2Service-response
    (cl:cons ':basket_colours (basket_colours msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Task2Service)))
  'Task2Service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Task2Service)))
  'Task2Service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task2Service)))
  "Returns string type for a service object of type '<Task2Service>"
  "panda_world_spawner/Task2Service")