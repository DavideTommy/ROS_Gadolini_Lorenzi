;; Auto-generated. Do not edit!


(when (boundp 'ros_proj::customMsg)
  (if (not (find-package "ROS_PROJ"))
    (make-package "ROS_PROJ"))
  (shadow 'customMsg (find-package "ROS_PROJ")))
(unless (find-package "ROS_PROJ::CUSTOMMSG")
  (make-package "ROS_PROJ::CUSTOMMSG"))

(in-package "ROS")
;;//! \htmlinclude customMsg.msg.html


(defclass ros_proj::customMsg
  :super ros::object
  :slots (_latitude _longitude _altitude _topic ))

(defmethod ros_proj::customMsg
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _topic (string __topic))
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
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _altitude
    4
    ;; string _topic
    4 (length _topic)
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
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
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
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_proj::customMsg :md5sum-) "d622bc11a41e3b0036750a62b226b234")
(setf (get ros_proj::customMsg :datatype-) "ros_proj/customMsg")
(setf (get ros_proj::customMsg :definition-)
      "float32 latitude
float32 longitude
float32 altitude
string topic
")



(provide :ros_proj/customMsg "d622bc11a41e3b0036750a62b226b234")


