;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::Waypoint)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'Waypoint (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::WAYPOINT")
  (make-package "ROSPLANE_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass rosplane_msgs::Waypoint
  :super ros::object
  :slots (_w _chi_d _chi_valid _Va_d _set_current _clear_wp_list _priority _loiter_point _landing ))

(defmethod rosplane_msgs::Waypoint
  (:init
   (&key
    ((:w __w) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:chi_d __chi_d) 0.0)
    ((:chi_valid __chi_valid) nil)
    ((:Va_d __Va_d) 0.0)
    ((:set_current __set_current) nil)
    ((:clear_wp_list __clear_wp_list) nil)
    ((:priority __priority) 0)
    ((:loiter_point __loiter_point) nil)
    ((:landing __landing) nil)
    )
   (send-super :init)
   (setq _w __w)
   (setq _chi_d (float __chi_d))
   (setq _chi_valid __chi_valid)
   (setq _Va_d (float __Va_d))
   (setq _set_current __set_current)
   (setq _clear_wp_list __clear_wp_list)
   (setq _priority (round __priority))
   (setq _loiter_point __loiter_point)
   (setq _landing __landing)
   self)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:chi_d
   (&optional __chi_d)
   (if __chi_d (setq _chi_d __chi_d)) _chi_d)
  (:chi_valid
   (&optional __chi_valid)
   (if __chi_valid (setq _chi_valid __chi_valid)) _chi_valid)
  (:Va_d
   (&optional __Va_d)
   (if __Va_d (setq _Va_d __Va_d)) _Va_d)
  (:set_current
   (&optional __set_current)
   (if __set_current (setq _set_current __set_current)) _set_current)
  (:clear_wp_list
   (&optional __clear_wp_list)
   (if __clear_wp_list (setq _clear_wp_list __clear_wp_list)) _clear_wp_list)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:loiter_point
   (&optional __loiter_point)
   (if __loiter_point (setq _loiter_point __loiter_point)) _loiter_point)
  (:landing
   (&optional __landing)
   (if __landing (setq _landing __landing)) _landing)
  (:serialization-length
   ()
   (+
    ;; float32[3] _w
    (* 4    3)
    ;; float32 _chi_d
    4
    ;; bool _chi_valid
    1
    ;; float32 _Va_d
    4
    ;; bool _set_current
    1
    ;; bool _clear_wp_list
    1
    ;; int8 _priority
    1
    ;; bool _loiter_point
    1
    ;; bool _landing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _w
     (dotimes (i 3)
       (sys::poke (elt _w i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _chi_d
       (sys::poke _chi_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _chi_valid
       (if _chi_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _Va_d
       (sys::poke _Va_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _set_current
       (if _set_current (write-byte -1 s) (write-byte 0 s))
     ;; bool _clear_wp_list
       (if _clear_wp_list (write-byte -1 s) (write-byte 0 s))
     ;; int8 _priority
       (write-byte _priority s)
     ;; bool _loiter_point
       (if _loiter_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _landing
       (if _landing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _w
   (dotimes (i (length _w))
     (setf (elt _w i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _chi_d
     (setq _chi_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _chi_valid
     (setq _chi_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _Va_d
     (setq _Va_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _set_current
     (setq _set_current (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clear_wp_list
     (setq _clear_wp_list (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _priority 127) (setq _priority (- _priority 256)))
   ;; bool _loiter_point
     (setq _loiter_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _landing
     (setq _landing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosplane_msgs::Waypoint :md5sum-) "880c6386c7dde0364a7b70d611f6e26f")
(setf (get rosplane_msgs::Waypoint :datatype-) "rosplane_msgs/Waypoint")
(setf (get rosplane_msgs::Waypoint :definition-)
      "# New waypoint, input to path manager

# @warning w and Va_d always have to be valid; the chi_d is optional.
float32[3] w		# Waypoint in local NED (m)
float32 chi_d		# Desired course at this waypoint (rad)
bool chi_valid		# Desired course valid (dubin or fillet paths)
float32 Va_d		# Desired airspeed (m/s)
bool set_current	# Sets this waypoint to be executed now! Starts a new list
bool clear_wp_list  # Removes all waypoints and returns to origin.  The rest of
                    # this message will be ignored

int8 priority       #added by zhaolin
bool loiter_point   #added by zhaolin
bool landing	    #added by zhaolin

")



(provide :rosplane_msgs/Waypoint "880c6386c7dde0364a7b70d611f6e26f")


