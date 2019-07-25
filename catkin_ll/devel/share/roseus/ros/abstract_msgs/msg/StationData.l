;; Auto-generated. Do not edit!


(when (boundp 'abstract_msgs::StationData)
  (if (not (find-package "ABSTRACT_MSGS"))
    (make-package "ABSTRACT_MSGS"))
  (shadow 'StationData (find-package "ABSTRACT_MSGS")))
(unless (find-package "ABSTRACT_MSGS::STATIONDATA")
  (make-package "ABSTRACT_MSGS::STATIONDATA"))

(in-package "ROS")
;;//! \htmlinclude StationData.msg.html


(defclass abstract_msgs::StationData
  :super ros::object
  :slots (_uavID _latitude _longitude _altitude ))

(defmethod abstract_msgs::StationData
  (:init
   (&key
    ((:uavID __uavID) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _uavID (string __uavID))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   self)
  (:uavID
   (&optional __uavID)
   (if __uavID (setq _uavID __uavID)) _uavID)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; string _uavID
    4 (length _uavID)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uavID
       (write-long (length _uavID) s) (princ _uavID s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uavID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uavID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get abstract_msgs::StationData :md5sum-) "57fdd61b8887a09939e92391e5860872")
(setf (get abstract_msgs::StationData :datatype-) "abstract_msgs/StationData")
(setf (get abstract_msgs::StationData :definition-)
      "string uavID
float64 latitude
float64 longitude
float64 altitude
")



(provide :abstract_msgs/StationData "57fdd61b8887a09939e92391e5860872")


