; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-msg)


;//! \htmlinclude PlanningFeedback.msg.html

(cl:defclass <PlanningFeedback> (roslisp-msg-protocol:ros-message)
  ((actual_pose
    :reader actual_pose
    :initarg :actual_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (stat
    :reader stat
    :initarg :stat
    :type cl:string
    :initform ""))
)

(cl:defclass PlanningFeedback (<PlanningFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-msg:<PlanningFeedback> is deprecated: use assignment_2_2023-msg:PlanningFeedback instead.")))

(cl:ensure-generic-function 'actual_pose-val :lambda-list '(m))
(cl:defmethod actual_pose-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:actual_pose-val is deprecated.  Use assignment_2_2023-msg:actual_pose instead.")
  (actual_pose m))

(cl:ensure-generic-function 'stat-val :lambda-list '(m))
(cl:defmethod stat-val ((m <PlanningFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:stat-val is deprecated.  Use assignment_2_2023-msg:stat instead.")
  (stat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningFeedback>) ostream)
  "Serializes a message object of type '<PlanningFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningFeedback>) istream)
  "Deserializes a message object of type '<PlanningFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stat) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stat) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningFeedback>)))
  "Returns string type for a message object of type '<PlanningFeedback>"
  "assignment_2_2023/PlanningFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningFeedback)))
  "Returns string type for a message object of type 'PlanningFeedback"
  "assignment_2_2023/PlanningFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningFeedback>)))
  "Returns md5sum for a message object of type '<PlanningFeedback>"
  "3b47324e0baca3583911e643e2a32dcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningFeedback)))
  "Returns md5sum for a message object of type 'PlanningFeedback"
  "3b47324e0baca3583911e643e2a32dcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningFeedback>)))
  "Returns full string definition for message of type '<PlanningFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Pose actual_pose~%string stat~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningFeedback)))
  "Returns full string definition for message of type 'PlanningFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Pose actual_pose~%string stat~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_pose))
     4 (cl:length (cl:slot-value msg 'stat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningFeedback
    (cl:cons ':actual_pose (actual_pose msg))
    (cl:cons ':stat (stat msg))
))