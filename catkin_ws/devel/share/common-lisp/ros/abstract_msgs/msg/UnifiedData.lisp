; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude UnifiedData.msg.html

(cl:defclass <UnifiedData> (roslisp-msg-protocol:ros-message)
  ((swarmID
    :reader swarmID
    :initarg :swarmID
    :type cl:integer
    :initform 0)
   (taskName
    :reader taskName
    :initarg :taskName
    :type cl:string
    :initform "")
   (actorName
    :reader actorName
    :initarg :actorName
    :type cl:string
    :initform "")
   (robotID
    :reader robotID
    :initarg :robotID
    :type cl:integer
    :initform 0)
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:string
    :initform "")
   (robotPose
    :reader robotPose
    :initarg :robotPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (sensorPose
    :reader sensorPose
    :initarg :sensorPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (dataType
    :reader dataType
    :initarg :dataType
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UnifiedData (<UnifiedData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnifiedData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnifiedData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<UnifiedData> is deprecated: use abstract_msgs-msg:UnifiedData instead.")))

(cl:ensure-generic-function 'swarmID-val :lambda-list '(m))
(cl:defmethod swarmID-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:swarmID-val is deprecated.  Use abstract_msgs-msg:swarmID instead.")
  (swarmID m))

(cl:ensure-generic-function 'taskName-val :lambda-list '(m))
(cl:defmethod taskName-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:taskName-val is deprecated.  Use abstract_msgs-msg:taskName instead.")
  (taskName m))

(cl:ensure-generic-function 'actorName-val :lambda-list '(m))
(cl:defmethod actorName-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:actorName-val is deprecated.  Use abstract_msgs-msg:actorName instead.")
  (actorName m))

(cl:ensure-generic-function 'robotID-val :lambda-list '(m))
(cl:defmethod robotID-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:robotID-val is deprecated.  Use abstract_msgs-msg:robotID instead.")
  (robotID m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:timeStamp-val is deprecated.  Use abstract_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'robotPose-val :lambda-list '(m))
(cl:defmethod robotPose-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:robotPose-val is deprecated.  Use abstract_msgs-msg:robotPose instead.")
  (robotPose m))

(cl:ensure-generic-function 'sensorPose-val :lambda-list '(m))
(cl:defmethod sensorPose-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:sensorPose-val is deprecated.  Use abstract_msgs-msg:sensorPose instead.")
  (sensorPose m))

(cl:ensure-generic-function 'dataType-val :lambda-list '(m))
(cl:defmethod dataType-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:dataType-val is deprecated.  Use abstract_msgs-msg:dataType instead.")
  (dataType m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UnifiedData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:data-val is deprecated.  Use abstract_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnifiedData>) ostream)
  "Serializes a message object of type '<UnifiedData>"
  (cl:let* ((signed (cl:slot-value msg 'swarmID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'taskName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'taskName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actorName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actorName))
  (cl:let* ((signed (cl:slot-value msg 'robotID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'timeStamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'timeStamp))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robotPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensorPose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dataType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dataType))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnifiedData>) istream)
  "Deserializes a message object of type '<UnifiedData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'swarmID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'taskName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actorName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actorName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeStamp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'timeStamp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robotPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensorPose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dataType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnifiedData>)))
  "Returns string type for a message object of type '<UnifiedData>"
  "abstract_msgs/UnifiedData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnifiedData)))
  "Returns string type for a message object of type 'UnifiedData"
  "abstract_msgs/UnifiedData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnifiedData>)))
  "Returns md5sum for a message object of type '<UnifiedData>"
  "48cec9a0486f5d717da700cd21865426")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnifiedData)))
  "Returns md5sum for a message object of type 'UnifiedData"
  "48cec9a0486f5d717da700cd21865426")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnifiedData>)))
  "Returns full string definition for message of type '<UnifiedData>"
  (cl:format cl:nil "int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string timeStamp~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose sensorPose~%string dataType~%uint8[] data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnifiedData)))
  "Returns full string definition for message of type 'UnifiedData"
  (cl:format cl:nil "int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string timeStamp~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose sensorPose~%string dataType~%uint8[] data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnifiedData>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'taskName))
     4 (cl:length (cl:slot-value msg 'actorName))
     4
     4 (cl:length (cl:slot-value msg 'timeStamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robotPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensorPose))
     4 (cl:length (cl:slot-value msg 'dataType))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnifiedData>))
  "Converts a ROS message object to a list"
  (cl:list 'UnifiedData
    (cl:cons ':swarmID (swarmID msg))
    (cl:cons ':taskName (taskName msg))
    (cl:cons ':actorName (actorName msg))
    (cl:cons ':robotID (robotID msg))
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':robotPose (robotPose msg))
    (cl:cons ':sensorPose (sensorPose msg))
    (cl:cons ':dataType (dataType msg))
    (cl:cons ':data (data msg))
))
