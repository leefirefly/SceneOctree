;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::EventQuery)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'EventQuery (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::EVENTQUERY")
  (make-package "ABSTRACT_MSGS::EVENTQUERY"))

(in-package "ROS")
;;//! \htmlinclude EventQuery.msg.html


(defclass abstract_msgs::EventQuery
  :super ros::object
  :slots (_event _sceneName _layerName _receiverID _spaceConstraint _xMin _xMax _yMin _yMax _zMin _zMax _isStop ))

(defmethod abstract_msgs::EventQuery
  (:init
   (&key
    ((:event __event) "")
    ((:sceneName __sceneName) "")
    ((:layerName __layerName) "")
    ((:receiverID __receiverID) 0)
    ((:spaceConstraint __spaceConstraint) nil)
    ((:xMin __xMin) 0.0)
    ((:xMax __xMax) 0.0)
    ((:yMin __yMin) 0.0)
    ((:yMax __yMax) 0.0)
    ((:zMin __zMin) 0.0)
    ((:zMax __zMax) 0.0)
    ((:isStop __isStop) nil)
    )
   (send-super :init)
   (setq _event (string __event))
   (setq _sceneName (string __sceneName))
   (setq _layerName (string __layerName))
   (setq _receiverID (round __receiverID))
   (setq _spaceConstraint __spaceConstraint)
   (setq _xMin (float __xMin))
   (setq _xMax (float __xMax))
   (setq _yMin (float __yMin))
   (setq _yMax (float __yMax))
   (setq _zMin (float __zMin))
   (setq _zMax (float __zMax))
   (setq _isStop __isStop)
   self)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:sceneName
   (&optional __sceneName)
   (if __sceneName (setq _sceneName __sceneName)) _sceneName)
  (:layerName
   (&optional __layerName)
   (if __layerName (setq _layerName __layerName)) _layerName)
  (:receiverID
   (&optional __receiverID)
   (if __receiverID (setq _receiverID __receiverID)) _receiverID)
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
  (:isStop
   (&optional __isStop)
   (if __isStop (setq _isStop __isStop)) _isStop)
  (:serialization-length
   ()
   (+
    ;; string _event
    4 (length _event)
    ;; string _sceneName
    4 (length _sceneName)
    ;; string _layerName
    4 (length _layerName)
    ;; int32 _receiverID
    4
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
    ;; bool _isStop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _event
       (write-long (length _event) s) (princ _event s)
     ;; string _sceneName
       (write-long (length _sceneName) s) (princ _sceneName s)
     ;; string _layerName
       (write-long (length _layerName) s) (princ _layerName s)
     ;; int32 _receiverID
       (write-long _receiverID s)
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
     ;; bool _isStop
       (if _isStop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _event
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sceneName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sceneName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _layerName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layerName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _receiverID
     (setq _receiverID (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; bool _isStop
     (setq _isStop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get abstract_msgs::EventQuery :md5sum-) "9059fc23f354e330ff575a1940e2342c")
(setf (get abstract_msgs::EventQuery :datatype-) "abstract_msgs/EventQuery")
(setf (get abstract_msgs::EventQuery :definition-)
      "string event
string sceneName
string layerName
int32 receiverID

bool spaceConstraint
float64 xMin
float64 xMax
float64 yMin
float64 yMax
float64 zMin
float64 zMax

bool isStop
")



(provide :abstract_msgs/EventQuery "9059fc23f354e330ff575a1940e2342c")


