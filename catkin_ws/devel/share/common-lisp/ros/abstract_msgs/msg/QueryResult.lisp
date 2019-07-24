; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude QueryResult.msg.html

(cl:defclass <QueryResult> (roslisp-msg-protocol:ros-message)
  ((senderID
    :reader senderID
    :initarg :senderID
    :type cl:integer
    :initform 0)
   (receiverID
    :reader receiverID
    :initarg :receiverID
    :type cl:integer
    :initform 0)
   (layerName
    :reader layerName
    :initarg :layerName
    :type cl:string
    :initform "")
   (sceneName
    :reader sceneName
    :initarg :sceneName
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type abstract_msgs-msg:UnifiedData
    :initform (cl:make-instance 'abstract_msgs-msg:UnifiedData))
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass QueryResult (<QueryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<QueryResult> is deprecated: use abstract_msgs-msg:QueryResult instead.")))

(cl:ensure-generic-function 'senderID-val :lambda-list '(m))
(cl:defmethod senderID-val ((m <QueryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:senderID-val is deprecated.  Use abstract_msgs-msg:senderID instead.")
  (senderID m))

(cl:ensure-generic-function 'receiverID-val :lambda-list '(m))
(cl:defmethod receiverID-val ((m <QueryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:receiverID-val is deprecated.  Use abstract_msgs-msg:receiverID instead.")
  (receiverID m))

(cl:ensure-generic-function 'layerName-val :lambda-list '(m))
(cl:defmethod layerName-val ((m <QueryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:layerName-val is deprecated.  Use abstract_msgs-msg:layerName instead.")
  (layerName m))

(cl:ensure-generic-function 'sceneName-val :lambda-list '(m))
(cl:defmethod sceneName-val ((m <QueryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:sceneName-val is deprecated.  Use abstract_msgs-msg:sceneName instead.")
  (sceneName m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <QueryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:data-val is deprecated.  Use abstract_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <QueryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:count-val is deprecated.  Use abstract_msgs-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryResult>) ostream)
  "Serializes a message object of type '<QueryResult>"
  (cl:let* ((signed (cl:slot-value msg 'senderID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'receiverID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'layerName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'layerName))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sceneName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sceneName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryResult>) istream)
  "Deserializes a message object of type '<QueryResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'senderID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'receiverID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layerName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'layerName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sceneName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sceneName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryResult>)))
  "Returns string type for a message object of type '<QueryResult>"
  "abstract_msgs/QueryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryResult)))
  "Returns string type for a message object of type 'QueryResult"
  "abstract_msgs/QueryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryResult>)))
  "Returns md5sum for a message object of type '<QueryResult>"
  "70f9ebe3b3f848562f53b546def58afa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryResult)))
  "Returns md5sum for a message object of type 'QueryResult"
  "70f9ebe3b3f848562f53b546def58afa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryResult>)))
  "Returns full string definition for message of type '<QueryResult>"
  (cl:format cl:nil "int32 senderID~%int32 receiverID~%string layerName~%string sceneName~%abstract_msgs/UnifiedData data~%~%int32 count~%~%================================================================================~%MSG: abstract_msgs/UnifiedData~%int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string timeStamp~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose sensorPose~%string dataType~%uint8[] data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryResult)))
  "Returns full string definition for message of type 'QueryResult"
  (cl:format cl:nil "int32 senderID~%int32 receiverID~%string layerName~%string sceneName~%abstract_msgs/UnifiedData data~%~%int32 count~%~%================================================================================~%MSG: abstract_msgs/UnifiedData~%int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string timeStamp~%geometry_msgs/Pose robotPose~%geometry_msgs/Pose sensorPose~%string dataType~%uint8[] data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryResult>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'layerName))
     4 (cl:length (cl:slot-value msg 'sceneName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryResult
    (cl:cons ':senderID (senderID msg))
    (cl:cons ':receiverID (receiverID msg))
    (cl:cons ':layerName (layerName msg))
    (cl:cons ':sceneName (sceneName msg))
    (cl:cons ':data (data msg))
    (cl:cons ':count (count msg))
))
