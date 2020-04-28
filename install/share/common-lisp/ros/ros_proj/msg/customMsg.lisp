; Auto-generated. Do not edit!


(cl:in-package ros_proj-msg)


;//! \htmlinclude customMsg.msg.html

(cl:defclass <customMsg> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass customMsg (<customMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <customMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'customMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_proj-msg:<customMsg> is deprecated: use ros_proj-msg:customMsg instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:latitude-val is deprecated.  Use ros_proj-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:longitude-val is deprecated.  Use ros_proj-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:altitude-val is deprecated.  Use ros_proj-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:topic-val is deprecated.  Use ros_proj-msg:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <customMsg>) ostream)
  "Serializes a message object of type '<customMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <customMsg>) istream)
  "Deserializes a message object of type '<customMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<customMsg>)))
  "Returns string type for a message object of type '<customMsg>"
  "ros_proj/customMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'customMsg)))
  "Returns string type for a message object of type 'customMsg"
  "ros_proj/customMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<customMsg>)))
  "Returns md5sum for a message object of type '<customMsg>"
  "d622bc11a41e3b0036750a62b226b234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'customMsg)))
  "Returns md5sum for a message object of type 'customMsg"
  "d622bc11a41e3b0036750a62b226b234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<customMsg>)))
  "Returns full string definition for message of type '<customMsg>"
  (cl:format cl:nil "float32 latitude~%float32 longitude~%float32 altitude~%string topic~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'customMsg)))
  "Returns full string definition for message of type 'customMsg"
  (cl:format cl:nil "float32 latitude~%float32 longitude~%float32 altitude~%string topic~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <customMsg>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <customMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'customMsg
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':topic (topic msg))
))
