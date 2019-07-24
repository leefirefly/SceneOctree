; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude LayerQuery.msg.html

(cl:defclass <LayerQuery> (roslisp-msg-protocol:ros-message)
  ((layerName
    :reader layerName
    :initarg :layerName
    :type cl:string
    :initform "")
   (actorVec
    :reader actorVec
    :initarg :actorVec
    :type (cl:vector abstract_msgs-msg:ActorQuery)
   :initform (cl:make-array 0 :element-type 'abstract_msgs-msg:ActorQuery :initial-element (cl:make-instance 'abstract_msgs-msg:ActorQuery)))
   (spaceConstraint
    :reader spaceConstraint
    :initarg :spaceConstraint
    :type cl:boolean
    :initform cl:nil)
   (xMin
    :reader xMin
    :initarg :xMin
    :type cl:float
    :initform 0.0)
   (xMax
    :reader xMax
    :initarg :xMax
    :type cl:float
    :initform 0.0)
   (yMin
    :reader yMin
    :initarg :yMin
    :type cl:float
    :initform 0.0)
   (yMax
    :reader yMax
    :initarg :yMax
    :type cl:float
    :initform 0.0)
   (zMin
    :reader zMin
    :initarg :zMin
    :type cl:float
    :initform 0.0)
   (zMax
    :reader zMax
    :initarg :zMax
    :type cl:float
    :initform 0.0)
   (layerType
    :reader layerType
    :initarg :layerType
    :type cl:integer
    :initform 0)
   (timeStart
    :reader timeStart
    :initarg :timeStart
    :type cl:string
    :initform "")
   (timeEnd
    :reader timeEnd
    :initarg :timeEnd
    :type cl:string
    :initform "")
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:integer
    :initform 0)
   (eventMsgVec
    :reader eventMsgVec
    :initarg :eventMsgVec
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (isStop
    :reader isStop
    :initarg :isStop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LayerQuery (<LayerQuery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LayerQuery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LayerQuery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<LayerQuery> is deprecated: use abstract_msgs-msg:LayerQuery instead.")))

(cl:ensure-generic-function 'layerName-val :lambda-list '(m))
(cl:defmethod layerName-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:layerName-val is deprecated.  Use abstract_msgs-msg:layerName instead.")
  (layerName m))

(cl:ensure-generic-function 'actorVec-val :lambda-list '(m))
(cl:defmethod actorVec-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:actorVec-val is deprecated.  Use abstract_msgs-msg:actorVec instead.")
  (actorVec m))

(cl:ensure-generic-function 'spaceConstraint-val :lambda-list '(m))
(cl:defmethod spaceConstraint-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:spaceConstraint-val is deprecated.  Use abstract_msgs-msg:spaceConstraint instead.")
  (spaceConstraint m))

(cl:ensure-generic-function 'xMin-val :lambda-list '(m))
(cl:defmethod xMin-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:xMin-val is deprecated.  Use abstract_msgs-msg:xMin instead.")
  (xMin m))

(cl:ensure-generic-function 'xMax-val :lambda-list '(m))
(cl:defmethod xMax-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:xMax-val is deprecated.  Use abstract_msgs-msg:xMax instead.")
  (xMax m))

(cl:ensure-generic-function 'yMin-val :lambda-list '(m))
(cl:defmethod yMin-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:yMin-val is deprecated.  Use abstract_msgs-msg:yMin instead.")
  (yMin m))

(cl:ensure-generic-function 'yMax-val :lambda-list '(m))
(cl:defmethod yMax-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:yMax-val is deprecated.  Use abstract_msgs-msg:yMax instead.")
  (yMax m))

(cl:ensure-generic-function 'zMin-val :lambda-list '(m))
(cl:defmethod zMin-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:zMin-val is deprecated.  Use abstract_msgs-msg:zMin instead.")
  (zMin m))

(cl:ensure-generic-function 'zMax-val :lambda-list '(m))
(cl:defmethod zMax-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:zMax-val is deprecated.  Use abstract_msgs-msg:zMax instead.")
  (zMax m))

(cl:ensure-generic-function 'layerType-val :lambda-list '(m))
(cl:defmethod layerType-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:layerType-val is deprecated.  Use abstract_msgs-msg:layerType instead.")
  (layerType m))

(cl:ensure-generic-function 'timeStart-val :lambda-list '(m))
(cl:defmethod timeStart-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:timeStart-val is deprecated.  Use abstract_msgs-msg:timeStart instead.")
  (timeStart m))

(cl:ensure-generic-function 'timeEnd-val :lambda-list '(m))
(cl:defmethod timeEnd-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:timeEnd-val is deprecated.  Use abstract_msgs-msg:timeEnd instead.")
  (timeEnd m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:frequency-val is deprecated.  Use abstract_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'eventMsgVec-val :lambda-list '(m))
(cl:defmethod eventMsgVec-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:eventMsgVec-val is deprecated.  Use abstract_msgs-msg:eventMsgVec instead.")
  (eventMsgVec m))

(cl:ensure-generic-function 'isStop-val :lambda-list '(m))
(cl:defmethod isStop-val ((m <LayerQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:isStop-val is deprecated.  Use abstract_msgs-msg:isStop instead.")
  (isStop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LayerQuery>) ostream)
  "Serializes a message object of type '<LayerQuery>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'layerName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'layerName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actorVec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actorVec))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spaceConstraint) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'layerType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'timeStart))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'timeStart))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'timeEnd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'timeEnd))
  (cl:let* ((signed (cl:slot-value msg 'frequency)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eventMsgVec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'eventMsgVec))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isStop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LayerQuery>) istream)
  "Deserializes a message object of type '<LayerQuery>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layerName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'layerName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actorVec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actorVec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'abstract_msgs-msg:ActorQuery))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'spaceConstraint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xMin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xMax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yMin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yMax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zMin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zMax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layerType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeStart) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'timeStart) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeEnd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'timeEnd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frequency) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eventMsgVec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eventMsgVec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'isStop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LayerQuery>)))
  "Returns string type for a message object of type '<LayerQuery>"
  "abstract_msgs/LayerQuery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LayerQuery)))
  "Returns string type for a message object of type 'LayerQuery"
  "abstract_msgs/LayerQuery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LayerQuery>)))
  "Returns md5sum for a message object of type '<LayerQuery>"
  "f055341a31be956bd0e168a756124afc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LayerQuery)))
  "Returns md5sum for a message object of type 'LayerQuery"
  "f055341a31be956bd0e168a756124afc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LayerQuery>)))
  "Returns full string definition for message of type '<LayerQuery>"
  (cl:format cl:nil "string layerName~%~%ActorQuery[] actorVec~%~%bool spaceConstraint~%float64 xMin~%float64 xMax~%float64 yMin~%float64 yMax~%float64 zMin~%float64 zMax~%~%int32 layerType~%~%string timeStart~%string timeEnd~%~%int32 frequency~%~%string[] eventMsgVec~%~%bool isStop~%================================================================================~%MSG: abstract_msgs/ActorQuery~%int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string[] dataTypeVec~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LayerQuery)))
  "Returns full string definition for message of type 'LayerQuery"
  (cl:format cl:nil "string layerName~%~%ActorQuery[] actorVec~%~%bool spaceConstraint~%float64 xMin~%float64 xMax~%float64 yMin~%float64 yMax~%float64 zMin~%float64 zMax~%~%int32 layerType~%~%string timeStart~%string timeEnd~%~%int32 frequency~%~%string[] eventMsgVec~%~%bool isStop~%================================================================================~%MSG: abstract_msgs/ActorQuery~%int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string[] dataTypeVec~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LayerQuery>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'layerName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actorVec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     8
     8
     8
     8
     8
     4
     4 (cl:length (cl:slot-value msg 'timeStart))
     4 (cl:length (cl:slot-value msg 'timeEnd))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eventMsgVec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LayerQuery>))
  "Converts a ROS message object to a list"
  (cl:list 'LayerQuery
    (cl:cons ':layerName (layerName msg))
    (cl:cons ':actorVec (actorVec msg))
    (cl:cons ':spaceConstraint (spaceConstraint msg))
    (cl:cons ':xMin (xMin msg))
    (cl:cons ':xMax (xMax msg))
    (cl:cons ':yMin (yMin msg))
    (cl:cons ':yMax (yMax msg))
    (cl:cons ':zMin (zMin msg))
    (cl:cons ':zMax (zMax msg))
    (cl:cons ':layerType (layerType msg))
    (cl:cons ':timeStart (timeStart msg))
    (cl:cons ':timeEnd (timeEnd msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':eventMsgVec (eventMsgVec msg))
    (cl:cons ':isStop (isStop msg))
))
