;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::ActiveActors)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'ActiveActors (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::ACTIVEACTORS")
  (make-package "ABSTRACT_MSGS::ACTIVEACTORS"))

(in-package "ROS")
;;//! \htmlinclude ActiveActors.msg.html


(defclass abstract_msgs::ActiveActors
  :super ros::object
  :slots (_swarmName _activeActorNames ))

(defmethod abstract_msgs::ActiveActors
  (:init
   (&key
    ((:swarmName __swarmName) "")
    ((:activeActorNames __activeActorNames) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _swarmName (string __swarmName))
   (setq _activeActorNames __activeActorNames)
   self)
  (:swarmName
   (&optional __swarmName)
   (if __swarmName (setq _swarmName __swarmName)) _swarmName)
  (:activeActorNames
   (&optional __activeActorNames)
   (if __activeActorNames (setq _activeActorNames __activeActorNames)) _activeActorNames)
  (:serialization-length
   ()
   (+
    ;; string _swarmName
    4 (length _swarmName)
    ;; string[] _activeActorNames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _activeActorNames)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _swarmName
       (write-long (length _swarmName) s) (princ _swarmName s)
     ;; string[] _activeActorNames
     (write-long (length _activeActorNames) s)
     (dolist (elem _activeActorNames)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _swarmName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _swarmName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _activeActorNames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activeActorNames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _activeActorNames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get abstract_msgs::ActiveActors :md5sum-) "990553788e8fb33cf6c4579f7fbf2a45")
(setf (get abstract_msgs::ActiveActors :datatype-) "abstract_msgs/ActiveActors")
(setf (get abstract_msgs::ActiveActors :definition-)
      "string swarmName
string[] activeActorNames
")



(provide :abstract_msgs/ActiveActors "990553788e8fb33cf6c4579f7fbf2a45")


