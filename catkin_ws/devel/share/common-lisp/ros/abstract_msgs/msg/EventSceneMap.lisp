; Auto-generated. Do not edit!


(cl:in-package abstract_msgs-msg)


;//! \htmlinclude EventSceneMap.msg.html

(cl:defclass <EventSceneMap> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type cl:string
    :initform "")
   (eventVec
    :reader eventVec
    :initarg :eventVec
    :type (cl:vector abstract_msgs-msg:EventQuery)
   :initform (cl:make-array 0 :element-type 'abstract_msgs-msg:EventQuery :initial-element (cl:make-instance 'abstract_msgs-msg:EventQuery))))
)

(cl:defclass EventSceneMap (<EventSceneMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventSceneMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventSceneMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abstract_msgs-msg:<EventSceneMap> is deprecated: use abstract_msgs-msg:EventSceneMap instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <EventSceneMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:event-val is deprecated.  Use abstract_msgs-msg:event instead.")
  (event m))

(cl:ensure-generic-function 'eventVec-val :lambda-list '(m))
(cl:defmethod eventVec-val ((m <EventSceneMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abstract_msgs-msg:eventVec-val is deprecated.  Use abstract_msgs-msg:eventVec instead.")
  (eventVec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventSceneMap>) ostream)
  "Serializes a message object of type '<EventSceneMap>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'event))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'event))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eventVec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'eventVec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventSceneMap>) istream)
  "Deserializes a message object of type '<EventSceneMap>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'event) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eventVec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eventVec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'abstract_msgs-msg:EventQuery))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventSceneMap>)))
  "Returns string type for a message object of type '<EventSceneMap>"
  "abstract_msgs/EventSceneMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventSceneMap)))
  "Returns string type for a message object of type 'EventSceneMap"
  "abstract_msgs/EventSceneMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventSceneMap>)))
  "Returns md5sum for a message object of type '<EventSceneMap>"
  "f2becf816840a945292dcaa58be0823d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventSceneMap)))
  "Returns md5sum for a message object of type 'EventSceneMap"
  "f2becf816840a945292dcaa58be0823d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventSceneMap>)))
  "Returns full string definition for message of type '<EventSceneMap>"
  (cl:format cl:nil "string event~%#string[] sceneName~%#string[] layerName~%#int32[] receiverID~%~%EventQuery[] eventVec~%================================================================================~%MSG: abstract_msgs/EventQuery~%string event~%string sceneName~%string layerName~%int32 receiverID~%~%bool spaceConstraint~%float64 xMin~%float64 xMax~%float64 yMin~%float64 yMax~%float64 zMin~%float64 zMax~%~%bool isStop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventSceneMap)))
  "Returns full string definition for message of type 'EventSceneMap"
  (cl:format cl:nil "string event~%#string[] sceneName~%#string[] layerName~%#int32[] receiverID~%~%EventQuery[] eventVec~%================================================================================~%MSG: abstract_msgs/EventQuery~%string event~%string sceneName~%string layerName~%int32 receiverID~%~%bool spaceConstraint~%float64 xMin~%float64 xMax~%float64 yMin~%float64 yMax~%float64 zMin~%float64 zMax~%~%bool isStop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventSceneMap>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'event))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eventVec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventSceneMap>))
  "Converts a ROS message object to a list"
  (cl:list 'EventSceneMap
    (cl:cons ':event (event msg))
    (cl:cons ':eventVec (eventVec msg))
))
