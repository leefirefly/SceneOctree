;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::UnifiedData)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'UnifiedData (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::UNIFIEDDATA")
  (make-package "ABSTRACT_MSGS::UNIFIEDDATA"))

(in-package "ROS")
;;//! \htmlinclude UnifiedData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass abstract_msgs::UnifiedData
  :super ros::object
  :slots (_swarmID _taskName _actorName _robotID _timeStamp _robotPose _sensorPose _dataType _data ))

(defmethod abstract_msgs::UnifiedData
  (:init
   (&key
    ((:swarmID __swarmID) 0)
    ((:taskName __taskName) "")
    ((:actorName __actorName) "")
    ((:robotID __robotID) 0)
    ((:timeStamp __timeStamp) "")
    ((:robotPose __robotPose) (instance geometry_msgs::Pose :init))
    ((:sensorPose __sensorPose) (instance geometry_msgs::Pose :init))
    ((:dataType __dataType) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _swarmID (round __swarmID))
   (setq _taskName (string __taskName))
   (setq _actorName (string __actorName))
   (setq _robotID (round __robotID))
   (setq _timeStamp (string __timeStamp))
   (setq _robotPose __robotPose)
   (setq _sensorPose __sensorPose)
   (setq _dataType (string __dataType))
   (setq _data __data)
   self)
  (:swarmID
   (&optional __swarmID)
   (if __swarmID (setq _swarmID __swarmID)) _swarmID)
  (:taskName
   (&optional __taskName)
   (if __taskName (setq _taskName __taskName)) _taskName)
  (:actorName
   (&optional __actorName)
   (if __actorName (setq _actorName __actorName)) _actorName)
  (:robotID
   (&optional __robotID)
   (if __robotID (setq _robotID __robotID)) _robotID)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:robotPose
   (&rest __robotPose)
   (if (keywordp (car __robotPose))
       (send* _robotPose __robotPose)
     (progn
       (if __robotPose (setq _robotPose (car __robotPose)))
       _robotPose)))
  (:sensorPose
   (&rest __sensorPose)
   (if (keywordp (car __sensorPose))
       (send* _sensorPose __sensorPose)
     (progn
       (if __sensorPose (setq _sensorPose (car __sensorPose)))
       _sensorPose)))
  (:dataType
   (&optional __dataType)
   (if __dataType (setq _dataType __dataType)) _dataType)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _swarmID
    4
    ;; string _taskName
    4 (length _taskName)
    ;; string _actorName
    4 (length _actorName)
    ;; int32 _robotID
    4
    ;; string _timeStamp
    4 (length _timeStamp)
    ;; geometry_msgs/Pose _robotPose
    (send _robotPose :serialization-length)
    ;; geometry_msgs/Pose _sensorPose
    (send _sensorPose :serialization-length)
    ;; string _dataType
    4 (length _dataType)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _swarmID
       (write-long _swarmID s)
     ;; string _taskName
       (write-long (length _taskName) s) (princ _taskName s)
     ;; string _actorName
       (write-long (length _actorName) s) (princ _actorName s)
     ;; int32 _robotID
       (write-long _robotID s)
     ;; string _timeStamp
       (write-long (length _timeStamp) s) (princ _timeStamp s)
     ;; geometry_msgs/Pose _robotPose
       (send _robotPose :serialize s)
     ;; geometry_msgs/Pose _sensorPose
       (send _sensorPose :serialize s)
     ;; string _dataType
       (write-long (length _dataType) s) (princ _dataType s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _swarmID
     (setq _swarmID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _taskName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _taskName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _actorName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actorName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _robotID
     (setq _robotID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _timeStamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timeStamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _robotPose
     (send _robotPose :deserialize buf ptr-) (incf ptr- (send _robotPose :serialization-length))
   ;; geometry_msgs/Pose _sensorPose
     (send _sensorPose :deserialize buf ptr-) (incf ptr- (send _sensorPose :serialization-length))
   ;; string _dataType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dataType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get abstract_msgs::UnifiedData :md5sum-) "48cec9a0486f5d717da700cd21865426")
(setf (get abstract_msgs::UnifiedData :datatype-) "abstract_msgs/UnifiedData")
(setf (get abstract_msgs::UnifiedData :definition-)
      "int32 swarmID
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



(provide :abstract_msgs/UnifiedData "48cec9a0486f5d717da700cd21865426")


