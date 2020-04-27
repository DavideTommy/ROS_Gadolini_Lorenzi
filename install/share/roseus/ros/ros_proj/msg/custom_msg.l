;; Auto-generated. Do not edit!


(when (boundp 'ros_proj::custom_msg)
  (if (not (find-package "ROS_PROJ"))
    (make-package "ROS_PROJ"))
  (shadow 'custom_msg (find-package "ROS_PROJ")))
(unless (find-package "ROS_PROJ::CUSTOM_MSG")
  (make-package "ROS_PROJ::CUSTOM_MSG"))

(in-package "ROS")
;;//! \htmlinclude custom_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_proj::custom_msg
  :super ros::object
  :slots (_custom_msg _latitude _longitude _altitude _vehicleType ))

(defmethod ros_proj::custom_msg
  (:init
   (&key
    ((:custom_msg __custom_msg) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:vehicleType __vehicleType) "")
    )
   (send-super :init)
   (setq _custom_msg __custom_msg)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _vehicleType (string __vehicleType))
   self)
  (:custom_msg
   (&rest __custom_msg)
   (if (keywordp (car __custom_msg))
       (send* _custom_msg __custom_msg)
     (progn
       (if __custom_msg (setq _custom_msg (car __custom_msg)))
       _custom_msg)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:vehicleType
   (&optional __vehicleType)
   (if __vehicleType (setq _vehicleType __vehicleType)) _vehicleType)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _custom_msg
    (send _custom_msg :serialization-length)
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _altitude
    4
    ;; string _vehicleType
    4 (length _vehicleType)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _custom_msg
       (send _custom_msg :serialize s)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _vehicleType
       (write-long (length _vehicleType) s) (princ _vehicleType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _custom_msg
     (send _custom_msg :deserialize buf ptr-) (incf ptr- (send _custom_msg :serialization-length))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _vehicleType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicleType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_proj::custom_msg :md5sum-) "3539ef97bcaedc9ae34172e0c5780202")
(setf (get ros_proj::custom_msg :datatype-) "ros_proj/custom_msg")
(setf (get ros_proj::custom_msg :definition-)
      "Header custom_msg
float32 latitude
float32 longitude
float32 altitude
string vehicleType
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data
# in a particular coordinate frame.
#
# sequence ID: consecutively increasing ID
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :ros_proj/custom_msg "3539ef97bcaedc9ae34172e0c5780202")


