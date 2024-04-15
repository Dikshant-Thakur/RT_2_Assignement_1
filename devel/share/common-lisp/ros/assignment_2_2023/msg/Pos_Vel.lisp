; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-msg)


;//! \htmlinclude Pos_Vel.msg.html

(cl:defclass <Pos_Vel> (roslisp-msg-protocol:ros-message)
  ((robpos_x
    :reader robpos_x
    :initarg :robpos_x
    :type cl:float
    :initform 0.0)
   (robpos_y
    :reader robpos_y
    :initarg :robpos_y
    :type cl:float
    :initform 0.0)
   (robvel_x
    :reader robvel_x
    :initarg :robvel_x
    :type cl:float
    :initform 0.0)
   (robvel_y
    :reader robvel_y
    :initarg :robvel_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pos_Vel (<Pos_Vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pos_Vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pos_Vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-msg:<Pos_Vel> is deprecated: use assignment_2_2023-msg:Pos_Vel instead.")))

(cl:ensure-generic-function 'robpos_x-val :lambda-list '(m))
(cl:defmethod robpos_x-val ((m <Pos_Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:robpos_x-val is deprecated.  Use assignment_2_2023-msg:robpos_x instead.")
  (robpos_x m))

(cl:ensure-generic-function 'robpos_y-val :lambda-list '(m))
(cl:defmethod robpos_y-val ((m <Pos_Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:robpos_y-val is deprecated.  Use assignment_2_2023-msg:robpos_y instead.")
  (robpos_y m))

(cl:ensure-generic-function 'robvel_x-val :lambda-list '(m))
(cl:defmethod robvel_x-val ((m <Pos_Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:robvel_x-val is deprecated.  Use assignment_2_2023-msg:robvel_x instead.")
  (robvel_x m))

(cl:ensure-generic-function 'robvel_y-val :lambda-list '(m))
(cl:defmethod robvel_y-val ((m <Pos_Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:robvel_y-val is deprecated.  Use assignment_2_2023-msg:robvel_y instead.")
  (robvel_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pos_Vel>) ostream)
  "Serializes a message object of type '<Pos_Vel>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robpos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robpos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robvel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'robvel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pos_Vel>) istream)
  "Deserializes a message object of type '<Pos_Vel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robpos_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robpos_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robvel_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'robvel_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pos_Vel>)))
  "Returns string type for a message object of type '<Pos_Vel>"
  "assignment_2_2023/Pos_Vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pos_Vel)))
  "Returns string type for a message object of type 'Pos_Vel"
  "assignment_2_2023/Pos_Vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pos_Vel>)))
  "Returns md5sum for a message object of type '<Pos_Vel>"
  "02c2eea77b57a6515b01afba1c028320")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pos_Vel)))
  "Returns md5sum for a message object of type 'Pos_Vel"
  "02c2eea77b57a6515b01afba1c028320")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pos_Vel>)))
  "Returns full string definition for message of type '<Pos_Vel>"
  (cl:format cl:nil "# custom.msg~%float64 robpos_x~%float64 robpos_y~%float64 robvel_x~%float64 robvel_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pos_Vel)))
  "Returns full string definition for message of type 'Pos_Vel"
  (cl:format cl:nil "# custom.msg~%float64 robpos_x~%float64 robpos_y~%float64 robvel_x~%float64 robvel_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pos_Vel>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pos_Vel>))
  "Converts a ROS message object to a list"
  (cl:list 'Pos_Vel
    (cl:cons ':robpos_x (robpos_x msg))
    (cl:cons ':robpos_y (robpos_y msg))
    (cl:cons ':robvel_x (robvel_x msg))
    (cl:cons ':robvel_y (robvel_y msg))
))
