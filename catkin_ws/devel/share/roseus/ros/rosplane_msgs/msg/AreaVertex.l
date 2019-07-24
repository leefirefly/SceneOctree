;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::AreaVertex)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'AreaVertex (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::AREAVERTEX")
  (make-package "ROSPLANE_MSGS::AREAVERTEX"))

(in-package "ROS")
;;//! \htmlinclude AreaVertex.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rosplane_msgs::AreaVertex
  :super ros::object
  :slots (_vertex ))

(defmethod rosplane_msgs::AreaVertex
  (:init
   (&key
    ((:vertex __vertex) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    )
   (send-super :init)
   (setq _vertex __vertex)
   self)
  (:vertex
   (&rest __vertex)
   (if (keywordp (car __vertex))
       (send* _vertex __vertex)
     (progn
       (if __vertex (setq _vertex (car __vertex)))
       _vertex)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32[] _vertex
    (apply #'+ (send-all _vertex :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32[] _vertex
     (write-long (length _vertex) s)
     (dolist (elem _vertex)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32[] _vertex
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertex (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _vertex)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosplane_msgs::AreaVertex :md5sum-) "14cd74da022c4112a0d5026e4bbe427c")
(setf (get rosplane_msgs::AreaVertex :datatype-) "rosplane_msgs/AreaVertex")
(setf (get rosplane_msgs::AreaVertex :definition-)
      "

geometry_msgs/Point32[] vertex


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



(provide :rosplane_msgs/AreaVertex "14cd74da022c4112a0d5026e4bbe427c")


