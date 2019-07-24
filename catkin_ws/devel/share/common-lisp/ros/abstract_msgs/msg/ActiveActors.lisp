; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude ActiveActors.msg.html

(cl:defclass <ActiveActors> (roslisp-msg-protocol:ros-message)
  ((swarmName
    :reader swarmName
    :initarg :swarmName
    :type cl:string
    :initform "")
   (activeActorNames
    :reader activeActorNames
    :initarg :activeActorNames
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ActiveActors (<ActiveActors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActiveActors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActiveActors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<ActiveActors> is deprecated: use abstract_msgs-msg:ActiveActors instead.")))

(cl:ensure-generic-function 'swarmName-val :lambda-list '(m))
(cl:defmethod swarmName-val ((m <ActiveActors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:swarmName-val is deprecated.  Use abstract_msgs-msg:swarmName instead.")
  (swarmName m))

(cl:ensure-generic-function 'activeActorNames-val :lambda-list '(m))
(cl:defmethod activeActorNames-val ((m <ActiveActors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:activeActorNames-val is deprecated.  Use abstract_msgs-msg:activeActorNames instead.")
  (activeActorNames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActiveActors>) ostream)
  "Serializes a message object of type '<ActiveActors>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'swarmName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'swarmName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'activeActorNames))))
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
   (cl:slot-value msg 'activeActorNames))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActiveActors>) istream)
  "Deserializes a message object of type '<ActiveActors>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'swarmName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'swarmName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'activeActorNames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'activeActorNames)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActiveActors>)))
  "Returns string type for a message object of type '<ActiveActors>"
  "abstract_msgs/ActiveActors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActiveActors)))
  "Returns string type for a message object of type 'ActiveActors"
  "abstract_msgs/ActiveActors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActiveActors>)))
  "Returns md5sum for a message object of type '<ActiveActors>"
  "990553788e8fb33cf6c4579f7fbf2a45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActiveActors)))
  "Returns md5sum for a message object of type 'ActiveActors"
  "990553788e8fb33cf6c4579f7fbf2a45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActiveActors>)))
  "Returns full string definition for message of type '<ActiveActors>"
  (cl:format cl:nil "string swarmName~%string[] activeActorNames~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActiveActors)))
  "Returns full string definition for message of type 'ActiveActors"
  (cl:format cl:nil "string swarmName~%string[] activeActorNames~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActiveActors>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'swarmName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'activeActorNames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActiveActors>))
  "Converts a ROS message object to a list"
  (cl:list 'ActiveActors
    (cl:cons ':swarmName (swarmName msg))
    (cl:cons ':activeActorNames (activeActorNames msg))
))
