; Auto-generated. Do not edit!


(cl:in-package rosplane_msgs-msg)


;//! \htmlinclude MultiVaGoal.msg.html

(cl:defclass <MultiVaGoal> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass MultiVaGoal (<MultiVaGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiVaGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiVaGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosplane_msgs-msg:<MultiVaGoal> is deprecated: use rosplane_msgs-msg:MultiVaGoal instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MultiVaGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:goal-val is deprecated.  Use rosplane_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiVaGoal>) ostream)
  "Serializes a message object of type '<MultiVaGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiVaGoal>) istream)
  "Deserializes a message object of type '<MultiVaGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiVaGoal>)))
  "Returns string type for a message object of type '<MultiVaGoal>"
  "rosplane_msgs/MultiVaGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiVaGoal)))
  "Returns string type for a message object of type 'MultiVaGoal"
  "rosplane_msgs/MultiVaGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiVaGoal>)))
  "Returns md5sum for a message object of type '<MultiVaGoal>"
  "db43ffa02e592166bb4af6702f58b8c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiVaGoal)))
  "Returns md5sum for a message object of type 'MultiVaGoal"
  "db43ffa02e592166bb4af6702f58b8c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiVaGoal>)))
  "Returns full string definition for message of type '<MultiVaGoal>"
  (cl:format cl:nil "~%~%geometry_msgs/Point32[] goal~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiVaGoal)))
  "Returns full string definition for message of type 'MultiVaGoal"
  (cl:format cl:nil "~%~%geometry_msgs/Point32[] goal~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiVaGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiVaGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiVaGoal
    (cl:cons ':goal (goal msg))
))
