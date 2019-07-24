;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::LayerQuery)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'LayerQuery (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::LAYERQUERY")
  (make-package "ABSTRACT_MSGS::LAYERQUERY"))

(in-package "ROS")
;;//! \htmlinclude LayerQuery.msg.html


(defclass abstract_msgs::LayerQuery
  :super ros::object
  :slots (_layerName _actorVec _spaceConstraint _xMin _xMax _yMin _yMax _zMin _zMax _layerType _timeStart _timeEnd _frequency _eventMsgVec _isStop ))

(defmethod abstract_msgs::LayerQuery
  (:init
   (&key
    ((:layerName __layerName) "")
    ((:actorVec __actorVec) (let (r) (dotimes (i 0) (push (instance abstract_msgs::ActorQuery :init) r)) r))
    ((:spaceConstraint __spaceConstraint) nil)
    ((:xMin __xMin) 0.0)
    ((:xMax __xMax) 0.0)
    ((:yMin __yMin) 0.0)
    ((:yMax __yMax) 0.0)
    ((:zMin __zMin) 0.0)
    ((:zMax __zMax) 0.0)
    ((:layerType __layerType) 0)
    ((:timeStart __timeStart) "")
    ((:timeEnd __timeEnd) "")
    ((:frequency __frequency) 0)
    ((:eventMsgVec __eventMsgVec) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:isStop __isStop) nil)
    )
   (send-super :init)
   (setq _layerName (string __layerName))
   (setq _actorVec __actorVec)
   (setq _spaceConstraint __spaceConstraint)
   (setq _xMin (float __xMin))
   (setq _xMax (float __xMax))
   (setq _yMin (float __yMin))
   (setq _yMax (float __yMax))
   (setq _zMin (float __zMin))
   (setq _zMax (float __zMax))
   (setq _layerType (round __layerType))
   (setq _timeStart (string __timeStart))
   (setq _timeEnd (string __timeEnd))
   (setq _frequency (round __frequency))
   (setq _eventMsgVec __eventMsgVec)
   (setq _isStop __isStop)
   self)
  (:layerName
   (&optional __layerName)
   (if __layerName (setq _layerName __layerName)) _layerName)
  (:actorVec
   (&rest __actorVec)
   (if (keywordp (car __actorVec))
       (send* _actorVec __actorVec)
     (progn
       (if __actorVec (setq _actorVec (car __actorVec)))
       _actorVec)))
  (:spaceConstraint
   (&optional __spaceConstraint)
   (if __spaceConstraint (setq _spaceConstraint __spaceConstraint)) _spaceConstraint)
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
  (:layerType
   (&optional __layerType)
   (if __layerType (setq _layerType __layerType)) _layerType)
  (:timeStart
   (&optional __timeStart)
   (if __timeStart (setq _timeStart __timeStart)) _timeStart)
  (:timeEnd
   (&optional __timeEnd)
   (if __timeEnd (setq _timeEnd __timeEnd)) _timeEnd)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:eventMsgVec
   (&optional __eventMsgVec)
   (if __eventMsgVec (setq _eventMsgVec __eventMsgVec)) _eventMsgVec)
  (:isStop
   (&optional __isStop)
   (if __isStop (setq _isStop __isStop)) _isStop)
  (:serialization-length
   ()
   (+
    ;; string _layerName
    4 (length _layerName)
    ;; abstract_msgs/ActorQuery[] _actorVec
    (apply #'+ (send-all _actorVec :serialization-length)) 4
    ;; bool _spaceConstraint
    1
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
    ;; int32 _layerType
    4
    ;; string _timeStart
    4 (length _timeStart)
    ;; string _timeEnd
    4 (length _timeEnd)
    ;; int32 _frequency
    4
    ;; string[] _eventMsgVec
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _eventMsgVec)) 4
    ;; bool _isStop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _layerName
       (write-long (length _layerName) s) (princ _layerName s)
     ;; abstract_msgs/ActorQuery[] _actorVec
     (write-long (length _actorVec) s)
     (dolist (elem _actorVec)
       (send elem :serialize s)
       )
     ;; bool _spaceConstraint
       (if _spaceConstraint (write-byte -1 s) (write-byte 0 s))
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
     ;; int32 _layerType
       (write-long _layerType s)
     ;; string _timeStart
       (write-long (length _timeStart) s) (princ _timeStart s)
     ;; string _timeEnd
       (write-long (length _timeEnd) s) (princ _timeEnd s)
     ;; int32 _frequency
       (write-long _frequency s)
     ;; string[] _eventMsgVec
     (write-long (length _eventMsgVec) s)
     (dolist (elem _eventMsgVec)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _isStop
       (if _isStop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _layerName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layerName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; abstract_msgs/ActorQuery[] _actorVec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actorVec (let (r) (dotimes (i n) (push (instance abstract_msgs::ActorQuery :init) r)) r))
     (dolist (elem- _actorVec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _spaceConstraint
     (setq _spaceConstraint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; int32 _layerType
     (setq _layerType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _timeStart
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timeStart (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _timeEnd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timeEnd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _frequency
     (setq _frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _eventMsgVec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eventMsgVec (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _eventMsgVec i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _isStop
     (setq _isStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get abstract_msgs::LayerQuery :md5sum-) "f055341a31be956bd0e168a756124afc")
(setf (get abstract_msgs::LayerQuery :datatype-) "abstract_msgs/LayerQuery")
(setf (get abstract_msgs::LayerQuery :definition-)
      "string layerName

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



(provide :abstract_msgs/LayerQuery "f055341a31be956bd0e168a756124afc")


