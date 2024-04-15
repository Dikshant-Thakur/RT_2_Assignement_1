; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude GetTrgtPos-request.msg.html

(cl:defclass <GetTrgtPos-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTrgtPos-request (<GetTrgtPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrgtPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrgtPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<GetTrgtPos-request> is deprecated: use assignment_2_2023-srv:GetTrgtPos-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrgtPos-request>) ostream)
  "Serializes a message object of type '<GetTrgtPos-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrgtPos-request>) istream)
  "Deserializes a message object of type '<GetTrgtPos-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrgtPos-request>)))
  "Returns string type for a service object of type '<GetTrgtPos-request>"
  "assignment_2_2023/GetTrgtPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrgtPos-request)))
  "Returns string type for a service object of type 'GetTrgtPos-request"
  "assignment_2_2023/GetTrgtPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrgtPos-request>)))
  "Returns md5sum for a message object of type '<GetTrgtPos-request>"
  "69bccf2d816940d53024849772a83192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrgtPos-request)))
  "Returns md5sum for a message object of type 'GetTrgtPos-request"
  "69bccf2d816940d53024849772a83192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrgtPos-request>)))
  "Returns full string definition for message of type '<GetTrgtPos-request>"
  (cl:format cl:nil "# GetTrgtPos.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrgtPos-request)))
  "Returns full string definition for message of type 'GetTrgtPos-request"
  (cl:format cl:nil "# GetTrgtPos.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrgtPos-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrgtPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrgtPos-request
))
;//! \htmlinclude GetTrgtPos-response.msg.html

(cl:defclass <GetTrgtPos-response> (roslisp-msg-protocol:ros-message)
  ((target_x
    :reader target_x
    :initarg :target_x
    :type cl:float
    :initform 0.0)
   (target_y
    :reader target_y
    :initarg :target_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetTrgtPos-response (<GetTrgtPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrgtPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrgtPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<GetTrgtPos-response> is deprecated: use assignment_2_2023-srv:GetTrgtPos-response instead.")))

(cl:ensure-generic-function 'target_x-val :lambda-list '(m))
(cl:defmethod target_x-val ((m <GetTrgtPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:target_x-val is deprecated.  Use assignment_2_2023-srv:target_x instead.")
  (target_x m))

(cl:ensure-generic-function 'target_y-val :lambda-list '(m))
(cl:defmethod target_y-val ((m <GetTrgtPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:target_y-val is deprecated.  Use assignment_2_2023-srv:target_y instead.")
  (target_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrgtPos-response>) ostream)
  "Serializes a message object of type '<GetTrgtPos-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrgtPos-response>) istream)
  "Deserializes a message object of type '<GetTrgtPos-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrgtPos-response>)))
  "Returns string type for a service object of type '<GetTrgtPos-response>"
  "assignment_2_2023/GetTrgtPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrgtPos-response)))
  "Returns string type for a service object of type 'GetTrgtPos-response"
  "assignment_2_2023/GetTrgtPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrgtPos-response>)))
  "Returns md5sum for a message object of type '<GetTrgtPos-response>"
  "69bccf2d816940d53024849772a83192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrgtPos-response)))
  "Returns md5sum for a message object of type 'GetTrgtPos-response"
  "69bccf2d816940d53024849772a83192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrgtPos-response>)))
  "Returns full string definition for message of type '<GetTrgtPos-response>"
  (cl:format cl:nil "float64 target_x~%float64 target_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrgtPos-response)))
  "Returns full string definition for message of type 'GetTrgtPos-response"
  (cl:format cl:nil "float64 target_x~%float64 target_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrgtPos-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrgtPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrgtPos-response
    (cl:cons ':target_x (target_x msg))
    (cl:cons ':target_y (target_y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTrgtPos)))
  'GetTrgtPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTrgtPos)))
  'GetTrgtPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrgtPos)))
  "Returns string type for a service object of type '<GetTrgtPos>"
  "assignment_2_2023/GetTrgtPos")