; Auto-generated. Do not edit!


(cl:in-package ros_proj-msg)


;//! \htmlinclude customMsg.msg.html

(cl:defclass <customMsg> (roslisp-msg-protocol:ros-message)
  ((E
    :reader E
    :initarg :E
    :type cl:float
    :initform 0.0)
   (N
    :reader N
    :initarg :N
    :type cl:float
    :initform 0.0)
   (Up
    :reader Up
    :initarg :Up
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

(cl:ensure-generic-function 'E-val :lambda-list '(m))
(cl:defmethod E-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:E-val is deprecated.  Use ros_proj-msg:E instead.")
  (E m))

(cl:ensure-generic-function 'N-val :lambda-list '(m))
(cl:defmethod N-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:N-val is deprecated.  Use ros_proj-msg:N instead.")
  (N m))

(cl:ensure-generic-function 'Up-val :lambda-list '(m))
(cl:defmethod Up-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:Up-val is deprecated.  Use ros_proj-msg:Up instead.")
  (Up m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <customMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_proj-msg:topic-val is deprecated.  Use ros_proj-msg:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <customMsg>) ostream)
  "Serializes a message object of type '<customMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'E))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'N))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Up))))
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
    (cl:setf (cl:slot-value msg 'E) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'N) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Up) (roslisp-utils:decode-single-float-bits bits)))
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
  "bec7a41a11f3982d277a0af26541e251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'customMsg)))
  "Returns md5sum for a message object of type 'customMsg"
  "bec7a41a11f3982d277a0af26541e251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<customMsg>)))
  "Returns full string definition for message of type '<customMsg>"
  (cl:format cl:nil "float32 E~%float32 N~%float32 Up~%string topic~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'customMsg)))
  "Returns full string definition for message of type 'customMsg"
  (cl:format cl:nil "float32 E~%float32 N~%float32 Up~%string topic~%~%"))
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
    (cl:cons ':E (E msg))
    (cl:cons ':N (N msg))
    (cl:cons ':Up (Up msg))
    (cl:cons ':topic (topic msg))
))
