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
  :slots (_E _N _Up _topic ))

(defmethod ros_proj::customMsg
  (:init
   (&key
    ((:E __E) 0.0)
    ((:N __N) 0.0)
    ((:Up __Up) 0.0)
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _E (float __E))
   (setq _N (float __N))
   (setq _Up (float __Up))
   (setq _topic (string __topic))
   self)
  (:E
   (&optional __E)
   (if __E (setq _E __E)) _E)
  (:N
   (&optional __N)
   (if __N (setq _N __N)) _N)
  (:Up
   (&optional __Up)
   (if __Up (setq _Up __Up)) _Up)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; float32 _E
    4
    ;; float32 _N
    4
    ;; float32 _Up
    4
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _E
       (sys::poke _E (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _N
       (sys::poke _N (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Up
       (sys::poke _Up (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _E
     (setq _E (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _N
     (setq _N (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Up
     (setq _Up (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_proj::customMsg :md5sum-) "bec7a41a11f3982d277a0af26541e251")
(setf (get ros_proj::customMsg :datatype-) "ros_proj/customMsg")
(setf (get ros_proj::customMsg :definition-)
      "float32 E
float32 N
float32 Up
string topic
")



(provide :ros_proj/customMsg "bec7a41a11f3982d277a0af26541e251")


