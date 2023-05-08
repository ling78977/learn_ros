; Auto-generated. Do not edit!


(cl:in-package start-msg)


;//! \htmlinclude a.msg.html

(cl:defclass <a> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass a (<a>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name start-msg:<a> is deprecated: use start-msg:a instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <a>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader start-msg:name-val is deprecated.  Use start-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <a>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader start-msg:age-val is deprecated.  Use start-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <a>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader start-msg:height-val is deprecated.  Use start-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a>) ostream)
  "Serializes a message object of type '<a>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a>) istream)
  "Deserializes a message object of type '<a>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a>)))
  "Returns string type for a message object of type '<a>"
  "start/a")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a)))
  "Returns string type for a message object of type 'a"
  "start/a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a>)))
  "Returns md5sum for a message object of type '<a>"
  "81ccf2097ef38ca6466e5a60ea1f8e49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a)))
  "Returns md5sum for a message object of type 'a"
  "81ccf2097ef38ca6466e5a60ea1f8e49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a>)))
  "Returns full string definition for message of type '<a>"
  (cl:format cl:nil "string name~%uint16 age~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a)))
  "Returns full string definition for message of type 'a"
  (cl:format cl:nil "string name~%uint16 age~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a>))
  "Converts a ROS message object to a list"
  (cl:list 'a
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':height (height msg))
))
