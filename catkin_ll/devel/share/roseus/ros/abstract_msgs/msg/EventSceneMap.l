;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::EventSceneMap)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'EventSceneMap (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::EVENTSCENEMAP")
  (make-package "ABSTRACT_MSGS::EVENTSCENEMAP"))

(in-package "ROS")
;;//! \htmlinclude EventSceneMap.msg.html


(defclass abstract_msgs::EventSceneMap
  :super ros::object
  :slots (_event _eventVec ))

(defmethod abstract_msgs::EventSceneMap
  (:init
   (&key
    ((:event __event) "")
    ((:eventVec __eventVec) (let (r) (dotimes (i 0) (push (instance abstract_msgs::EventQuery :init) r)) r))
    )
   (send-super :init)
   (setq _event (string __event))
   (setq _eventVec __eventVec)
   self)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:eventVec
   (&rest __eventVec)
   (if (keywordp (car __eventVec))
       (send* _eventVec __eventVec)
     (progn
       (if __eventVec (setq _eventVec (car __eventVec)))
       _eventVec)))
  (:serialization-length
   ()
   (+
    ;; string _event
    4 (length _event)
    ;; abstract_msgs/EventQuery[] _eventVec
    (apply #'+ (send-all _eventVec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _event
       (write-long (length _event) s) (princ _event s)
     ;; abstract_msgs/EventQuery[] _eventVec
     (write-long (length _eventVec) s)
     (dolist (elem _eventVec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _event
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; abstract_msgs/EventQuery[] _eventVec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eventVec (let (r) (dotimes (i n) (push (instance abstract_msgs::EventQuery :init) r)) r))
     (dolist (elem- _eventVec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get abstract_msgs::EventSceneMap :md5sum-) "f2becf816840a945292dcaa58be0823d")
(setf (get abstract_msgs::EventSceneMap :datatype-) "abstract_msgs/EventSceneMap")
(setf (get abstract_msgs::EventSceneMap :definition-)
      "string event
#string[] sceneName
#string[] layerName
#int32[] receiverID

EventQuery[] eventVec
================================================================================
MSG: abstract_msgs/EventQuery
string event
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



(provide :abstract_msgs/EventSceneMap "f2becf816840a945292dcaa58be0823d")


