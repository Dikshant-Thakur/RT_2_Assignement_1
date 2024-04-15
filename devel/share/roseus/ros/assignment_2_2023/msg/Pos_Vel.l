;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::Pos_Vel)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'Pos_Vel (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::POS_VEL")
  (make-package "ASSIGNMENT_2_2023::POS_VEL"))

(in-package "ROS")
;;//! \htmlinclude Pos_Vel.msg.html


(defclass assignment_2_2023::Pos_Vel
  :super ros::object
  :slots (_robpos_x _robpos_y _robvel_x _robvel_y ))

(defmethod assignment_2_2023::Pos_Vel
  (:init
   (&key
    ((:robpos_x __robpos_x) 0.0)
    ((:robpos_y __robpos_y) 0.0)
    ((:robvel_x __robvel_x) 0.0)
    ((:robvel_y __robvel_y) 0.0)
    )
   (send-super :init)
   (setq _robpos_x (float __robpos_x))
   (setq _robpos_y (float __robpos_y))
   (setq _robvel_x (float __robvel_x))
   (setq _robvel_y (float __robvel_y))
   self)
  (:robpos_x
   (&optional __robpos_x)
   (if __robpos_x (setq _robpos_x __robpos_x)) _robpos_x)
  (:robpos_y
   (&optional __robpos_y)
   (if __robpos_y (setq _robpos_y __robpos_y)) _robpos_y)
  (:robvel_x
   (&optional __robvel_x)
   (if __robvel_x (setq _robvel_x __robvel_x)) _robvel_x)
  (:robvel_y
   (&optional __robvel_y)
   (if __robvel_y (setq _robvel_y __robvel_y)) _robvel_y)
  (:serialization-length
   ()
   (+
    ;; float64 _robpos_x
    8
    ;; float64 _robpos_y
    8
    ;; float64 _robvel_x
    8
    ;; float64 _robvel_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _robpos_x
       (sys::poke _robpos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robpos_y
       (sys::poke _robpos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robvel_x
       (sys::poke _robvel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _robvel_y
       (sys::poke _robvel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _robpos_x
     (setq _robpos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robpos_y
     (setq _robpos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robvel_x
     (setq _robvel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _robvel_y
     (setq _robvel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get assignment_2_2023::Pos_Vel :md5sum-) "02c2eea77b57a6515b01afba1c028320")
(setf (get assignment_2_2023::Pos_Vel :datatype-) "assignment_2_2023/Pos_Vel")
(setf (get assignment_2_2023::Pos_Vel :definition-)
      "# custom.msg
float64 robpos_x
float64 robpos_y
float64 robvel_x
float64 robvel_y

")



(provide :assignment_2_2023/Pos_Vel "02c2eea77b57a6515b01afba1c028320")


