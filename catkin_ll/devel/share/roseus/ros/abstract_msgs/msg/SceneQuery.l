;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::SceneQuery)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'SceneQuery (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::SCENEQUERY")
  (make-package "ABSTRACT_MSGS::SCENEQUERY"))

(in-package "ROS")
;;//! \htmlinclude SceneQuery.msg.html


(defclass abstract_msgs::SceneQuery
  :super ros::object
  :slots (_sceneName _layerVec _senderID _isHeartbeat _isStop ))

(defmethod abstract_msgs::SceneQuery
  (:init
   (&key
    ((:sceneName __sceneName) "")
    ((:layerVec __layerVec) (let (r) (dotimes (i 0) (push (instance abstract_msgs::LayerQuery :init) r)) r))
    ((:senderID __senderID) 0)
    ((:isHeartbeat __isHeartbeat) nil)
    ((:isStop __isStop) nil)
    )
   (send-super :init)
   (setq _sceneName (string __sceneName))
   (setq _layerVec __layerVec)
   (setq _senderID (round __senderID))
   (setq _isHeartbeat __isHeartbeat)
   (setq _isStop __isStop)
   self)
  (:sceneName
   (&optional __sceneName)
   (if __sceneName (setq _sceneName __sceneName)) _sceneName)
  (:layerVec
   (&rest __layerVec)
   (if (keywordp (car __layerVec))
       (send* _layerVec __layerVec)
     (progn
       (if __layerVec (setq _layerVec (car __layerVec)))
       _layerVec)))
  (:senderID
   (&optional __senderID)
   (if __senderID (setq _senderID __senderID)) _senderID)
  (:isHeartbeat
   (&optional __isHeartbeat)
   (if __isHeartbeat (setq _isHeartbeat __isHeartbeat)) _isHeartbeat)
  (:isStop
   (&optional __isStop)
   (if __isStop (setq _isStop __isStop)) _isStop)
  (:serialization-length
   ()
   (+
    ;; string _sceneName
    4 (length _sceneName)
    ;; abstract_msgs/LayerQuery[] _layerVec
    (apply #'+ (send-all _layerVec :serialization-length)) 4
    ;; int32 _senderID
    4
    ;; bool _isHeartbeat
    1
    ;; bool _isStop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sceneName
       (write-long (length _sceneName) s) (princ _sceneName s)
     ;; abstract_msgs/LayerQuery[] _layerVec
     (write-long (length _layerVec) s)
     (dolist (elem _layerVec)
       (send elem :serialize s)
       )
     ;; int32 _senderID
       (write-long _senderID s)
     ;; bool _isHeartbeat
       (if _isHeartbeat (write-byte -1 s) (write-byte 0 s))
     ;; bool _isStop
       (if _isStop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sceneName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sceneName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; abstract_msgs/LayerQuery[] _layerVec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _layerVec (let (r) (dotimes (i n) (push (instance abstract_msgs::LayerQuery :init) r)) r))
     (dolist (elem- _layerVec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _senderID
     (setq _senderID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isHeartbeat
     (setq _isHeartbeat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isStop
     (setq _isStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get abstract_msgs::SceneQuery :md5sum-) "77e12209bfa06f6dc3b213463f217e9b")
(setf (get abstract_msgs::SceneQuery :datatype-) "abstract_msgs/SceneQuery")
(setf (get abstract_msgs::SceneQuery :definition-)
      "string sceneName
LayerQuery[] layerVec
int32 senderID
bool isHeartbeat
bool isStop
================================================================================
MSG: abstract_msgs/LayerQuery
string layerName

ActorQuery[] actorVec

bool spaceConstraint
float64 xMin
float64 xMax
float64 yMin
float64 yMax
float64 zMin
float64 zMax

int32 layerType

string timeStart
string timeEnd

int32 frequency

string[] eventMsgVec

bool isStop
================================================================================
MSG: abstract_msgs/ActorQuery
int32 swarmID
string taskName
string actorName
int32 robotID
string[] dataTypeVec
")



(provide :abstract_msgs/SceneQuery "77e12209bfa06f6dc3b213463f217e9b")


