; Auto-generated. Do not edit!


(cl:in-package rosplane_msgs-msg)


;//! \htmlinclude AreaVertex.msg.html

(cl:defclass <AreaVertex> (roslisp-msg-protocol:ros-message)
  ((vertex
    :reader vertex
    :initarg :vertex
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32))))
)

(cl:defclass AreaVertex (<AreaVertex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AreaVertex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AreaVertex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosplane_msgs-msg:<AreaVertex> is deprecated: use rosplane_msgs-msg:AreaVertex instead.")))

(cl:ensure-generic-function 'vertex-val :lambda-list '(m))
(cl:defmethod vertex-val ((m <AreaVertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:vertex-val is deprecated.  Use rosplane_msgs-msg:vertex instead.")
  (vertex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AreaVertex>) ostream)
  "Serializes a message object of type '<AreaVertex>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertex))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AreaVertex>) istream)
  "Deserializes a message object of type '<AreaVertex>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertex) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertex)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AreaVertex>)))
  "Returns string type for a message object of type '<AreaVertex>"
  "rosplane_msgs/AreaVertex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AreaVertex)))
  "Returns string type for a message object of type 'AreaVertex"
  "rosplane_msgs/AreaVertex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AreaVertex>)))
  "Returns md5sum for a message object of type '<AreaVertex>"
  "14cd74da022c4112a0d5026e4bbe427c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AreaVertex)))
  "Returns md5sum for a message object of type 'AreaVertex"
  "14cd74da022c4112a0d5026e4bbe427c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AreaVertex>)))
  "Returns full string definition for message of type '<AreaVertex>"
  (cl:format cl:nil "~%~%geometry_msgs/Point32[] vertex~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AreaVertex)))
  "Returns full string definition for message of type 'AreaVertex"
  (cl:format cl:nil "~%~%geometry_msgs/Point32[] vertex~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AreaVertex>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertex) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AreaVertex>))
  "Converts a ROS message object to a list"
  (cl:list 'AreaVertex
    (cl:cons ':vertex (vertex msg))
))
