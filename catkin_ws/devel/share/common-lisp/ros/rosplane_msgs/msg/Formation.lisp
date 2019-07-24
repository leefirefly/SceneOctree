; Auto-generated. Do not edit!


(cl:in-package rosplane_msgs-msg)


;//! \htmlinclude Formation.msg.html

(cl:defclass <Formation> (roslisp-msg-protocol:ros-message)
  ((formation
    :reader formation
    :initarg :formation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Formation (<Formation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Formation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Formation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosplane_msgs-msg:<Formation> is deprecated: use rosplane_msgs-msg:Formation instead.")))

(cl:ensure-generic-function 'formation-val :lambda-list '(m))
(cl:defmethod formation-val ((m <Formation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:formation-val is deprecated.  Use rosplane_msgs-msg:formation instead.")
  (formation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Formation>)))
    "Constants for message type '<Formation>"
  '((:ARROW . 0)
    (:STRAIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Formation)))
    "Constants for message type 'Formation"
  '((:ARROW . 0)
    (:STRAIGHT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Formation>) ostream)
  "Serializes a message object of type '<Formation>"
  (cl:let* ((signed (cl:slot-value msg 'formation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Formation>) istream)
  "Deserializes a message object of type '<Formation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'formation) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Formation>)))
  "Returns string type for a message object of type '<Formation>"
  "rosplane_msgs/Formation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Formation)))
  "Returns string type for a message object of type 'Formation"
  "rosplane_msgs/Formation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Formation>)))
  "Returns md5sum for a message object of type '<Formation>"
  "99bfa9d80277f37210790ea2de15a518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Formation)))
  "Returns md5sum for a message object of type 'Formation"
  "99bfa9d80277f37210790ea2de15a518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Formation>)))
  "Returns full string definition for message of type '<Formation>"
  (cl:format cl:nil "# swarm formation~%~%int8 formation    #indicate the type of the formation   ~%~%int8 ARROW = 0~%int8 STRAIGHT = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Formation)))
  "Returns full string definition for message of type 'Formation"
  (cl:format cl:nil "# swarm formation~%~%int8 formation    #indicate the type of the formation   ~%~%int8 ARROW = 0~%int8 STRAIGHT = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Formation>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Formation>))
  "Converts a ROS message object to a list"
  (cl:list 'Formation
    (cl:cons ':formation (formation msg))
))
