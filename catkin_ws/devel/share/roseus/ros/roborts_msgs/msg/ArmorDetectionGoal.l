;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::ArmorDetectionGoal)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'ArmorDetectionGoal (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ARMORDETECTIONGOAL")
  (make-package "ROBORTS_MSGS::ARMORDETECTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude ArmorDetectionGoal.msg.html


(defclass roborts_msgs::ArmorDetectionGoal
  :super ros::object
  :slots (_command ))

(defmethod roborts_msgs::ArmorDetectionGoal
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roborts_msgs::ArmorDetectionGoal :md5sum-) "3a54bc0c5f4abe9ad44d29292ec0800d")
(setf (get roborts_msgs::ArmorDetectionGoal :datatype-) "roborts_msgs/ArmorDetectionGoal")
(setf (get roborts_msgs::ArmorDetectionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Send a flag to server to control the thread start, pause, restart and stop
#command == 1 start
#command == 2 pause
#command == 3 stop
int32 command

")



(provide :roborts_msgs/ArmorDetectionGoal "3a54bc0c5f4abe9ad44d29292ec0800d")


