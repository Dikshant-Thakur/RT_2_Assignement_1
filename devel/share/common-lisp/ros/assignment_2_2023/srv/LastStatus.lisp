; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude LastStatus-request.msg.html

(cl:defclass <LastStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LastStatus-request (<LastStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LastStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LastStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<LastStatus-request> is deprecated: use assignment_2_2023-srv:LastStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LastStatus-request>) ostream)
  "Serializes a message object of type '<LastStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LastStatus-request>) istream)
  "Deserializes a message object of type '<LastStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LastStatus-request>)))
  "Returns string type for a service object of type '<LastStatus-request>"
  "assignment_2_2023/LastStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LastStatus-request)))
  "Returns string type for a service object of type 'LastStatus-request"
  "assignment_2_2023/LastStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LastStatus-request>)))
  "Returns md5sum for a message object of type '<LastStatus-request>"
  "f6cfeb7770557ec0e7e7227af7085b94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LastStatus-request)))
  "Returns md5sum for a message object of type 'LastStatus-request"
  "f6cfeb7770557ec0e7e7227af7085b94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LastStatus-request>)))
  "Returns full string definition for message of type '<LastStatus-request>"
  (cl:format cl:nil "# LastStatus.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LastStatus-request)))
  "Returns full string definition for message of type 'LastStatus-request"
  (cl:format cl:nil "# LastStatus.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LastStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LastStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LastStatus-request
))
;//! \htmlinclude LastStatus-response.msg.html

(cl:defclass <LastStatus-response> (roslisp-msg-protocol:ros-message)
  ((distance_to_target
    :reader distance_to_target
    :initarg :distance_to_target
    :type cl:float
    :initform 0.0)
   (average_speed
    :reader average_speed
    :initarg :average_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass LastStatus-response (<LastStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LastStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LastStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<LastStatus-response> is deprecated: use assignment_2_2023-srv:LastStatus-response instead.")))

(cl:ensure-generic-function 'distance_to_target-val :lambda-list '(m))
(cl:defmethod distance_to_target-val ((m <LastStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:distance_to_target-val is deprecated.  Use assignment_2_2023-srv:distance_to_target instead.")
  (distance_to_target m))

(cl:ensure-generic-function 'average_speed-val :lambda-list '(m))
(cl:defmethod average_speed-val ((m <LastStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:average_speed-val is deprecated.  Use assignment_2_2023-srv:average_speed instead.")
  (average_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LastStatus-response>) ostream)
  "Serializes a message object of type '<LastStatus-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'average_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LastStatus-response>) istream)
  "Deserializes a message object of type '<LastStatus-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_target) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LastStatus-response>)))
  "Returns string type for a service object of type '<LastStatus-response>"
  "assignment_2_2023/LastStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LastStatus-response)))
  "Returns string type for a service object of type 'LastStatus-response"
  "assignment_2_2023/LastStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LastStatus-response>)))
  "Returns md5sum for a message object of type '<LastStatus-response>"
  "f6cfeb7770557ec0e7e7227af7085b94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LastStatus-response)))
  "Returns md5sum for a message object of type 'LastStatus-response"
  "f6cfeb7770557ec0e7e7227af7085b94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LastStatus-response>)))
  "Returns full string definition for message of type '<LastStatus-response>"
  (cl:format cl:nil "float64 distance_to_target~%float64 average_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LastStatus-response)))
  "Returns full string definition for message of type 'LastStatus-response"
  (cl:format cl:nil "float64 distance_to_target~%float64 average_speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LastStatus-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LastStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LastStatus-response
    (cl:cons ':distance_to_target (distance_to_target msg))
    (cl:cons ':average_speed (average_speed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LastStatus)))
  'LastStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LastStatus)))
  'LastStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LastStatus)))
  "Returns string type for a service object of type '<LastStatus>"
  "assignment_2_2023/LastStatus")