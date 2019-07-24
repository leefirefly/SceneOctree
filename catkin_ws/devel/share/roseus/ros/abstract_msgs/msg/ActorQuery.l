;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::ActorQuery)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'ActorQuery (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::ACTORQUERY")
  (make-package "ABSTRACT_MSGS::ACTORQUERY"))

(in-package "ROS")
;;//! \htmlinclude ActorQuery.msg.html


(defclass abstract_msgs::ActorQuery
  :super ros::object
  :slots (_swarmID _taskName _actorName _robotID _dataTypeVec ))

(defmethod abstract_msgs::ActorQuery
  (:init
   (&key
    ((:swarmID __swarmID) 0)
    ((:taskName __taskName) "")
    ((:actorName __actorName) "")
    ((:robotID __robotID) 0)
    ((:dataTypeVec __dataTypeVec) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _swarmID (round __swarmID))
   (setq _taskName (string __taskName))
   (setq _actorName (string __actorName))
   (setq _robotID (round __robotID))
   (setq _dataTypeVec __dataTypeVec)
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
  (:dataTypeVec
   (&optional __dataTypeVec)
   (if __dataTypeVec (setq _dataTypeVec __dataTypeVec)) _dataTypeVec)
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
    ;; string[] _dataTypeVec
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _dataTypeVec)) 4
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
     ;; string[] _dataTypeVec
     (write-long (length _dataTypeVec) s)
     (dolist (elem _dataTypeVec)
       (write-long (length elem) s) (princ elem s)
       )
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

(setf (get abstract_msgs::ActorQuery :md5sum-) "a01d38376bdfcaa1a71265cfaf842128")
(setf (get abstract_msgs::ActorQuery :datatype-) "abstract_msgs/ActorQuery")
(setf (get abstract_msgs::ActorQuery :definition-)
      "int32 swarmID
string taskName
string actorName
int32 robotID
string[] dataTypeVec
")



(provide :abstract_msgs/ActorQuery "a01d38376bdfcaa1a71265cfaf842128")


