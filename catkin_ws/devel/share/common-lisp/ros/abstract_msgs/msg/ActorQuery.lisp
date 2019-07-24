; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude ActorQuery.msg.html

(cl:defclass <ActorQuery> (roslisp-msg-protocol:ros-message)
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
   (dataTypeVec
    :reader dataTypeVec
    :initarg :dataTypeVec
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ActorQuery (<ActorQuery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActorQuery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActorQuery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<ActorQuery> is deprecated: use abstract_msgs-msg:ActorQuery instead.")))

(cl:ensure-generic-function 'swarmID-val :lambda-list '(m))
(cl:defmethod swarmID-val ((m <ActorQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:swarmID-val is deprecated.  Use abstract_msgs-msg:swarmID instead.")
  (swarmID m))

(cl:ensure-generic-function 'taskName-val :lambda-list '(m))
(cl:defmethod taskName-val ((m <ActorQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:taskName-val is deprecated.  Use abstract_msgs-msg:taskName instead.")
  (taskName m))

(cl:ensure-generic-function 'actorName-val :lambda-list '(m))
(cl:defmethod actorName-val ((m <ActorQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:actorName-val is deprecated.  Use abstract_msgs-msg:actorName instead.")
  (actorName m))

(cl:ensure-generic-function 'robotID-val :lambda-list '(m))
(cl:defmethod robotID-val ((m <ActorQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:robotID-val is deprecated.  Use abstract_msgs-msg:robotID instead.")
  (robotID m))

(cl:ensure-generic-function 'dataTypeVec-val :lambda-list '(m))
(cl:defmethod dataTypeVec-val ((m <ActorQuery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:dataTypeVec-val is deprecated.  Use abstract_msgs-msg:dataTypeVec instead.")
  (dataTypeVec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActorQuery>) ostream)
  "Serializes a message object of type '<ActorQuery>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dataTypeVec))))
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
   (cl:slot-value msg 'dataTypeVec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActorQuery>) istream)
  "Deserializes a message object of type '<ActorQuery>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dataTypeVec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dataTypeVec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActorQuery>)))
  "Returns string type for a message object of type '<ActorQuery>"
  "abstract_msgs/ActorQuery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActorQuery)))
  "Returns string type for a message object of type 'ActorQuery"
  "abstract_msgs/ActorQuery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActorQuery>)))
  "Returns md5sum for a message object of type '<ActorQuery>"
  "a01d38376bdfcaa1a71265cfaf842128")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActorQuery)))
  "Returns md5sum for a message object of type 'ActorQuery"
  "a01d38376bdfcaa1a71265cfaf842128")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActorQuery>)))
  "Returns full string definition for message of type '<ActorQuery>"
  (cl:format cl:nil "int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string[] dataTypeVec~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActorQuery)))
  "Returns full string definition for message of type 'ActorQuery"
  (cl:format cl:nil "int32 swarmID~%string taskName~%string actorName~%int32 robotID~%string[] dataTypeVec~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActorQuery>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'taskName))
     4 (cl:length (cl:slot-value msg 'actorName))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dataTypeVec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActorQuery>))
  "Converts a ROS message object to a list"
  (cl:list 'ActorQuery
    (cl:cons ':swarmID (swarmID msg))
    (cl:cons ':taskName (taskName msg))
    (cl:cons ':actorName (actorName msg))
    (cl:cons ':robotID (robotID msg))
    (cl:cons ':dataTypeVec (dataTypeVec msg))
))
