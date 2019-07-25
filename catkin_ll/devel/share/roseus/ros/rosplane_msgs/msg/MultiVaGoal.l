;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::MultiVaGoal)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'MultiVaGoal (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::MULTIVAGOAL")
  (make-package "ROSPLANE_MSGS::MULTIVAGOAL"))

(in-package "ROS")
;;//! \htmlinclude MultiVaGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rosplane_msgs::MultiVaGoal
  :super ros::object
  :slots (_goal ))

(defmethod rosplane_msgs::MultiVaGoal
  (:init
   (&key
    ((:goal __goal) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32[] _goal
    (apply #'+ (send-all _goal :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32[] _goal
     (write-long (length _goal) s)
     (dolist (elem _goal)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32[] _goal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _goal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosplane_msgs::MultiVaGoal :md5sum-) "db43ffa02e592166bb4af6702f58b8c3")
(setf (get rosplane_msgs::MultiVaGoal :datatype-) "rosplane_msgs/MultiVaGoal")
(setf (get rosplane_msgs::MultiVaGoal :definition-)
      "

geometry_msgs/Point32[] goal


================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :rosplane_msgs/MultiVaGoal "db43ffa02e592166bb4af6702f58b8c3")


