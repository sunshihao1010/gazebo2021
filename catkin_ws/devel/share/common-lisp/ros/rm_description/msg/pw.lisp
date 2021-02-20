; Auto-generated. Do not edit!


(cl:in-package rm_description-msg)


;//! \htmlinclude pw.msg.html

(cl:defclass <pw> (roslisp-msg-protocol:ros-message)
  ((pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0))
)

(cl:defclass pw (<pw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_description-msg:<pw> is deprecated: use rm_description-msg:pw instead.")))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <pw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_description-msg:pitch-val is deprecated.  Use rm_description-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <pw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_description-msg:yaw-val is deprecated.  Use rm_description-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <pw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_description-msg:s-val is deprecated.  Use rm_description-msg:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pw>) ostream)
  "Serializes a message object of type '<pw>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pw>) istream)
  "Deserializes a message object of type '<pw>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pw>)))
  "Returns string type for a message object of type '<pw>"
  "rm_description/pw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pw)))
  "Returns string type for a message object of type 'pw"
  "rm_description/pw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pw>)))
  "Returns md5sum for a message object of type '<pw>"
  "5bbf025dbed9aa989ef9bcc67b8929d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pw)))
  "Returns md5sum for a message object of type 'pw"
  "5bbf025dbed9aa989ef9bcc67b8929d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pw>)))
  "Returns full string definition for message of type '<pw>"
  (cl:format cl:nil "float32 pitch~%float32 yaw~%float32 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pw)))
  "Returns full string definition for message of type 'pw"
  (cl:format cl:nil "float32 pitch~%float32 yaw~%float32 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pw>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pw>))
  "Converts a ROS message object to a list"
  (cl:list 'pw
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':s (s msg))
))
