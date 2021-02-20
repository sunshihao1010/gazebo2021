;; Auto-generated. Do not edit!


(when (boundp 'rm_description::pw)
  (if (not (find-package "RM_DESCRIPTION"))
    (make-package "RM_DESCRIPTION"))
  (shadow 'pw (find-package "RM_DESCRIPTION")))
(unless (find-package "RM_DESCRIPTION::PW")
  (make-package "RM_DESCRIPTION::PW"))

(in-package "ROS")
;;//! \htmlinclude pw.msg.html


(defclass rm_description::pw
  :super ros::object
  :slots (_pitch _yaw _s ))

(defmethod rm_description::pw
  (:init
   (&key
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:s __s) 0.0)
    )
   (send-super :init)
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _s (float __s))
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _s
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_description::pw :md5sum-) "5bbf025dbed9aa989ef9bcc67b8929d2")
(setf (get rm_description::pw :datatype-) "rm_description/pw")
(setf (get rm_description::pw :definition-)
      "float32 pitch
float32 yaw
float32 s

")



(provide :rm_description/pw "5bbf025dbed9aa989ef9bcc67b8929d2")


