;; Auto-generated. Do not edit!


(when (boundp 'ros_proj::custom_msg)
  (if (not (find-package "ROS_PROJ"))
    (make-package "ROS_PROJ"))
  (shadow 'custom_msg (find-package "ROS_PROJ")))
(unless (find-package "ROS_PROJ::CUSTOM_MSG")
  (make-package "ROS_PROJ::CUSTOM_MSG"))

(in-package "ROS")
;;//! \htmlinclude custom_msg.msg.html


(defclass ros_proj::custom_msg
  :super ros::object
  :slots (_latitude _longitude _altitude _vehicleType ))

(defmethod ros_proj::custom_msg
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:vehicleType __vehicleType) "")
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _vehicleType (string __vehicleType))
   self)
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

(setf (get ros_proj::custom_msg :md5sum-) "b7b02c3dfba0b2b08c53eb019d9e8b34")
(setf (get ros_proj::custom_msg :datatype-) "ros_proj/custom_msg")
(setf (get ros_proj::custom_msg :definition-)
      "float32 latitude
float32 longitude
float32 altitude
string vehicleType
")



(provide :ros_proj/custom_msg "b7b02c3dfba0b2b08c53eb019d9e8b34")


