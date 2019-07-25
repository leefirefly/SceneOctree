;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::EventResult)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'EventResult (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::EVENTRESULT")
  (make-package "ABSTRACT_MSGS::EVENTRESULT"))

(in-package "ROS")
;;//! \htmlinclude EventResult.msg.html


(defclass abstract_msgs::EventResult
  :super ros::object
  :slots (_senderID _receiverID _layerName _sceneName _data _eventCount ))

(defmethod abstract_msgs::EventResult
  (:init
   (&key
    ((:senderID __senderID) 0)
    ((:receiverID __receiverID) 0)
    ((:layerName __layerName) "")
    ((:sceneName __sceneName) "")
    ((:data __data) (instance abstract_msgs::UnifiedData :init))
    ((:eventCount __eventCount) 0)
    )
   (send-super :init)
   (setq _senderID (round __senderID))
   (setq _receiverID (round __receiverID))
   (setq _layerName (string __layerName))
   (setq _sceneName (string __sceneName))
   (setq _data __data)
   (setq _eventCount (round __eventCount))
   self)
  (:senderID
   (&optional __senderID)
   (if __senderID (setq _senderID __senderID)) _senderID)
  (:receiverID
   (&optional __receiverID)
   (if __receiverID (setq _receiverID __receiverID)) _receiverID)
  (:layerName
   (&optional __layerName)
   (if __layerName (setq _layerName __layerName)) _layerName)
  (:sceneName
   (&optional __sceneName)
   (if __sceneName (setq _sceneName __sceneName)) _sceneName)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:eventCount
   (&optional __eventCount)
   (if __eventCount (setq _eventCount __eventCount)) _eventCount)
  (:serialization-length
   ()
   (+
    ;; int32 _senderID
    4
    ;; int32 _receiverID
    4
    ;; string _layerName
    4 (length _layerName)
    ;; string _sceneName
    4 (length _sceneName)
    ;; abstract_msgs/UnifiedData _data
    (send _data :serialization-length)
    ;; int32 _eventCount
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _senderID
       (write-long _senderID s)
     ;; int32 _receiverID
       (write-long _receiverID s)
     ;; string _layerName
       (write-long (length _layerName) s) (princ _layerName s)
     ;; string _sceneName
       (write-long (length _sceneName) s) (princ _sceneName s)
     ;; abstract_msgs/UnifiedData _data
       (send _data :serialize s)
     ;; int32 _eventCount
       (write-long _eventCount s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _senderID
     (setq _senderID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _receiverID
     (setq _receiverID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _layerName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layerName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sceneName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sceneName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; abstract_msgs/UnifiedData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;; int32 _eventCount
     (setq _eventCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get abstract_msgs::EventResult :md5sum-) "cc2ad38104a65a7df727d5b4baeb7e4a")
(setf (get abstract_msgs::EventResult :datatype-) "abstract_msgs/EventResult")
(setf (get abstract_msgs::EventResult :definition-)
      "int32 senderID
int32 receiverID
string layerName
string sceneName
abstract_msgs/UnifiedData data

int32 eventCount
================================================================================
MSG: abstract_msgs/UnifiedData
int32 swarmID
string taskName
string actorName
int32 robotID
string timeStamp
geometry_msgs/Pose robotPose
geometry_msgs/Pose sensorPose
string dataType
uint8[] data
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :abstract_msgs/EventResult "cc2ad38104a65a7df727d5b4baeb7e4a")


