;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::Goal)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'Goal (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::GOAL")
  (make-package "ASSIGNMENT_2_2023::GOAL"))

(in-package "ROS")
;;//! \htmlinclude Goal.msg.html


(defclass assignment_2_2023::Goal
  :super ros::object
  :slots (_target_x _target_y ))

(defmethod assignment_2_2023::Goal
  (:init
   (&key
    ((:target_x __target_x) 0.0)
    ((:target_y __target_y) 0.0)
    )
   (send-super :init)
   (setq _target_x (float __target_x))
   (setq _target_y (float __target_y))
   self)
  (:target_x
   (&optional __target_x)
   (if __target_x (setq _target_x __target_x)) _target_x)
  (:target_y
   (&optional __target_y)
   (if __target_y (setq _target_y __target_y)) _target_y)
  (:serialization-length
   ()
   (+
    ;; float64 _target_x
    8
    ;; float64 _target_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _target_x
       (sys::poke _target_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_y
       (sys::poke _target_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _target_x
     (setq _target_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_y
     (setq _target_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get assignment_2_2023::Goal :md5sum-) "69bccf2d816940d53024849772a83192")
(setf (get assignment_2_2023::Goal :datatype-) "assignment_2_2023/Goal")
(setf (get assignment_2_2023::Goal :definition-)
      "# Goal.msg
float64 target_x
float64 target_y

")



(provide :assignment_2_2023/Goal "69bccf2d816940d53024849772a83192")


