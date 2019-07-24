; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude SceneQuery.msg.html

(cl:defclass <SceneQuery> (roslisp-msg-protocol:ros-message)
  ((sceneName
    :reader sceneName
    :initarg :sceneName
    :type cl:string
    :initform "")
   (layerVec
    :reader layerVec
    :initarg :layerVec
    :type (cl:vector abstract_msgs-msg:LayerQuery)
   :initform (cl:make-array 0 :element-type 'abstract_msgs-msg:LayerQuery :initial-element (cl:make-instance 'abstract_msgs-msg:LayerQuery)))
   (senderID
    :reader senderID
    :initarg :senderID
    :type cl:integer
    :initform 0)
   (isHeartbeat
    :reader isHeartbeat
    :initarg :isHeartbeat
    :type cl:boolean
    :initform cl:nil)
   (isStop
    :reader isStop
    :initarg :isStop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SceneQuery (<SceneQuery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneQuery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneQuery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<SceneQuery> is deprecated: use abstract_msgs-msg:SceneQuery instead.")))

(cl:ensure-generic-function 'sceneName-val :lambda-list '(m))
(cl:defmethod sceneName-val ((m <SceneQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:sceneName-val is deprecated.  Use abstract_msgs-msg:sceneName instead.")
  (sceneName m))

(cl:ensure-generic-function 'layerVec-val :lambda-list '(m))
(cl:defmethod layerVec-val ((m <SceneQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:layerVec-val is deprecated.  Use abstract_msgs-msg:layerVec instead.")
  (layerVec m))

(cl:ensure-generic-function 'senderID-val :lambda-list '(m))
(cl:defmethod senderID-val ((m <SceneQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:senderID-val is deprecated.  Use abstract_msgs-msg:senderID instead.")
  (senderID m))

(cl:ensure-generic-function 'isHeartbeat-val :lambda-list '(m))
(cl:defmethod isHeartbeat-val ((m <SceneQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:isHeartbeat-val is deprecated.  Use abstract_msgs-msg:isHeartbeat instead.")
  (isHeartbeat m))

(cl:ensure-generic-function 'isStop-val :lambda-list '(m))
(cl:defmethod isStop-val ((m <SceneQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:isStop-val is deprecated.  Use abstract_msgs-msg:isStop instead.")
  (isStop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneQuery>) ostream)
  "Serializes a message object of type '<SceneQuery>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sceneName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sceneName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'layerVec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'layerVec))
  (cl:let* ((signed (cl:slot-value msg 'senderID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isHeartbeat) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isStop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneQuery>) istream)
  "Deserializes a message object of type '<SceneQuery>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sceneName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sceneName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'layerVec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'layerVec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'abstract_msgs-msg:LayerQuery))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'senderID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'isHeartbeat) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isStop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneQuery>)))
  "Returns string type for a message object of type '<SceneQuery>"
  "abstract_msgs/SceneQuery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneQuery)))
  "Returns string type for a message object of type 'SceneQuery"
  "abstract_msgs/SceneQuery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneQuery>)))
  "Returns md5sum for a message object of type '<SceneQuery>"
  "77e12209bfa06f6dc3b213463f217e9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneQuery)))
  "Returns md5sum for a message object of type 'SceneQuery"
  "77e12209bfa06f6dc3b213463f217e9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneQuery>)))
  "Returns full string definition for message of type '<SceneQuery>"
  (cl:format cl:nil "string sceneName~%LayerQuery[] layerVec~%int32 senderID~%bool isHeartbeat~%bool isStop~%================================================================================~%MSG: abstract_msgs/LayerQuery~%string layerName~%~%ActorQuery[] actorVec~%~%bool spaceConstraint~%float64 xMin~%float64 xMax~%float64 yMin~%float64 yMax~%float64 zMin~%float64 zMax~%~%int32 layerType~%~%string timeStart~%string timeEnd~%~%int32 frequency~%~%string[] eventMsgVec~%~%bool isStop~%================================================================================~%MSG: abstract_msgs/ActorQuery~%int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string[] dataTypeVec~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneQuery)))
  "Returns full string definition for message of type 'SceneQuery"
  (cl:format cl:nil "string sceneName~%LayerQuery[] layerVec~%int32 senderID~%bool isHeartbeat~%bool isStop~%================================================================================~%MSG: abstract_msgs/LayerQuery~%string layerName~%~%ActorQuery[] actorVec~%~%bool spaceConstraint~%float64 xMin~%float64 xMax~%float64 yMin~%float64 yMax~%float64 zMin~%float64 zMax~%~%int32 layerType~%~%string timeStart~%string timeEnd~%~%int32 frequency~%~%string[] eventMsgVec~%~%bool isStop~%================================================================================~%MSG: abstract_msgs/ActorQuery~%int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string[] dataTypeVec~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneQuery>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sceneName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'layerVec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneQuery>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneQuery
    (cl:cons ':sceneName (sceneName msg))
    (cl:cons ':layerVec (layerVec msg))
    (cl:cons ':senderID (senderID msg))
    (cl:cons ':isHeartbeat (isHeartbeat msg))
    (cl:cons ':isStop (isStop msg))
))
