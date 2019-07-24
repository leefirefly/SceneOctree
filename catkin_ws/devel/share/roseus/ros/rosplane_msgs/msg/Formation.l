;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::Formation)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'Formation (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::FORMATION")
  (make-package "ROSPLANE_MSGS::FORMATION"))

(in-package "ROS")
;;//! \htmlinclude Formation.msg.html


(intern "*ARROW*" (find-package "ROSPLANE_MSGS::FORMATION"))
(shadow '*ARROW* (find-package "ROSPLANE_MSGS::FORMATION"))
(defconstant rosplane_msgs::Formation::*ARROW* 0)
(intern "*STRAIGHT*" (find-package "ROSPLANE_MSGS::FORMATION"))
(shadow '*STRAIGHT* (find-package "ROSPLANE_MSGS::FORMATION"))
(defconstant rosplane_msgs::Formation::*STRAIGHT* 1)
(defclass rosplane_msgs::Formation
  :super ros::object
  :slots (_formation ))

(defmethod rosplane_msgs::Formation
  (:init
   (&key
    ((:formation __formation) 0)
    )
   (send-super :init)
   (setq _formation (round __formation))
   self)
  (:formation
   (&optional __formation)
   (if __formation (setq _formation __formation)) _formation)
  (:serialization-length
   ()
   (+
    ;; int8 _formation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _formation
       (write-byte _formation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _formation
     (setq _formation (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _formation 127) (setq _formation (- _formation 256)))
   ;;
   self)
  )

(setf (get rosplane_msgs::Formation :md5sum-) "99bfa9d80277f37210790ea2de15a518")
(setf (get rosplane_msgs::Formation :datatype-) "rosplane_msgs/Formation")
(setf (get rosplane_msgs::Formation :definition-)
      "# swarm formation

int8 formation    #indicate the type of the formation   

int8 ARROW = 0
int8 STRAIGHT = 1

")



(provide :rosplane_msgs/Formation "99bfa9d80277f37210790ea2de15a518")


