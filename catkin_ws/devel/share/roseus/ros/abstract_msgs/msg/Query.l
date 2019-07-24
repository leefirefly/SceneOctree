;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::Query)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'Query (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::QUERY")
  (make-package "ABSTRACT_MSGS::QUERY"))

(in-package "ROS")
;;//! \htmlinclude Query.msg.html


(defclass abstract_msgs::Query
  :super ros::object
  :slots (_xMin _xMax _yMin _yMax _zMin _zMax _timeStart _timeEnd _frequency _swarmID _taskName _actorName _robotID _dataTypeVec ))

(defmethod abstract_msgs::Query
  (:init
   (&key
    ((:xMin __xMin) 0.0)
    ((:xMax __xMax) 0.0)
    ((:yMin __yMin) 0.0)
    ((:yMax __yMax) 0.0)
    ((:zMin __zMin) 0.0)
    ((:zMax __zMax) 0.0)
    ((:timeStart __timeStart) "")
    ((:timeEnd __timeEnd) "")
    ((:frequency __frequency) 0)
    ((:swarmID __swarmID) 0)
    ((:taskName __taskName) "")
    ((:actorName __actorName) "")
    ((:robotID __robotID) 0)
    ((:dataTypeVec __dataTypeVec) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _xMin (float __xMin))
   (setq _xMax (float __xMax))
   (setq _yMin (float __yMin))
   (setq _yMax (float __yMax))
   (setq _zMin (float __zMin))
   (setq _zMax (float __zMax))
   (setq _timeStart (string __timeStart))
   (setq _timeEnd (string __timeEnd))
   (setq _frequency (round __frequency))
   (setq _swarmID (round __swarmID))
   (setq _taskName (string __taskName))
   (setq _actorName (string __actorName))
   (setq _robotID (round __robotID))
   (setq _dataTypeVec __dataTypeVec)
   self)
  (:xMin
   (&optional __xMin)
   (if __xMin (setq _xMin __xMin)) _xMin)
  (:xMax
   (&optional __xMax)
   (if __xMax (setq _xMax __xMax)) _xMax)
  (:yMin
   (&optional __yMin)
   (if __yMin (setq _yMin __yMin)) _yMin)
  (:yMax
   (&optional __yMax)
   (if __yMax (setq _yMax __yMax)) _yMax)
  (:zMin
   (&optional __zMin)
   (if __zMin (setq _zMin __zMin)) _zMin)
  (:zMax
   (&optional __zMax)
   (if __zMax (setq _zMax __zMax)) _zMax)
  (:timeStart
   (&optional __timeStart)
   (if __timeStart (setq _timeStart __timeStart)) _timeStart)
  (:timeEnd
   (&optional __timeEnd)
   (if __timeEnd (setq _timeEnd __timeEnd)) _timeEnd)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
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
  (:dataTypeVec
   (&optional __dataTypeVec)
   (if __dataTypeVec (setq _dataTypeVec __dataTypeVec)) _dataTypeVec)
  (:serialization-length
   ()
   (+
    ;; float64 _xMin
    8
    ;; float64 _xMax
    8
    ;; float64 _yMin
    8
    ;; float64 _yMax
    8
    ;; float64 _zMin
    8
    ;; float64 _zMax
    8
    ;; string _timeStart
    4 (length _timeStart)
    ;; string _timeEnd
    4 (length _timeEnd)
    ;; int32 _frequency
    4
    ;; int32 _swarmID
    4
    ;; string _taskName
    4 (length _taskName)
    ;; string _actorName
    4 (length _actorName)
    ;; int32 _robotID
    4
    ;; string[] _dataTypeVec
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _dataTypeVec)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xMin
       (sys::poke _xMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xMax
       (sys::poke _xMax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yMin
       (sys::poke _yMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yMax
       (sys::poke _yMax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zMin
       (sys::poke _zMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _zMax
       (sys::poke _zMax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _timeStart
       (write-long (length _timeStart) s) (princ _timeStart s)
     ;; string _timeEnd
       (write-long (length _timeEnd) s) (princ _timeEnd s)
     ;; int32 _frequency
       (write-long _frequency s)
     ;; int32 _swarmID
       (write-long _swarmID s)
     ;; string _taskName
       (write-long (length _taskName) s) (princ _taskName s)
     ;; string _actorName
       (write-long (length _actorName) s) (princ _actorName s)
     ;; int32 _robotID
       (write-long _robotID s)
     ;; string[] _dataTypeVec
     (write-long (length _dataTypeVec) s)
     (dolist (elem _dataTypeVec)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xMin
     (setq _xMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xMax
     (setq _xMax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yMin
     (setq _yMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yMax
     (setq _yMax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zMin
     (setq _zMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _zMax
     (setq _zMax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _timeStart
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timeStart (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _timeEnd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timeEnd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _frequency
     (setq _frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _swarmID
     (setq _swarmID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _taskName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _taskName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _actorName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actorName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _robotID
     (setq _robotID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _dataTypeVec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dataTypeVec (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _dataTypeVec i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get abstract_msgs::Query :md5sum-) "708be305c5f963a9c77602e531dba1e3")
(setf (get abstract_msgs::Query :datatype-) "abstract_msgs/Query")
(setf (get abstract_msgs::Query :definition-)
      "float64 xMin
float64 xMax
float64 yMin
float64 yMax
float64 zMin
float64 zMax

string timeStart
string timeEnd

int32 frequency

int32 swarmID
string taskName
string actorName
int32 robotID
string[] dataTypeVec
")



(provide :abstract_msgs/Query "708be305c5f963a9c77602e531dba1e3")


