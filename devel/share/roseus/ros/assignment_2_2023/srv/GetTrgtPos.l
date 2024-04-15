;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::GetTrgtPos)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'GetTrgtPos (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::GETTRGTPOS")
  (make-package "ASSIGNMENT_2_2023::GETTRGTPOS"))
(unless (find-package "ASSIGNMENT_2_2023::GETTRGTPOSREQUEST")
  (make-package "ASSIGNMENT_2_2023::GETTRGTPOSREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::GETTRGTPOSRESPONSE")
  (make-package "ASSIGNMENT_2_2023::GETTRGTPOSRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::GetTrgtPosRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::GetTrgtPosRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass assignment_2_2023::GetTrgtPosResponse
  :super ros::object
  :slots (_target_x _target_y ))

(defmethod assignment_2_2023::GetTrgtPosResponse
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

(defclass assignment_2_2023::GetTrgtPos
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::GetTrgtPos :md5sum-) "69bccf2d816940d53024849772a83192")
(setf (get assignment_2_2023::GetTrgtPos :datatype-) "assignment_2_2023/GetTrgtPos")
(setf (get assignment_2_2023::GetTrgtPos :request) assignment_2_2023::GetTrgtPosRequest)
(setf (get assignment_2_2023::GetTrgtPos :response) assignment_2_2023::GetTrgtPosResponse)

(defmethod assignment_2_2023::GetTrgtPosRequest
  (:response () (instance assignment_2_2023::GetTrgtPosResponse :init)))

(setf (get assignment_2_2023::GetTrgtPosRequest :md5sum-) "69bccf2d816940d53024849772a83192")
(setf (get assignment_2_2023::GetTrgtPosRequest :datatype-) "assignment_2_2023/GetTrgtPosRequest")
(setf (get assignment_2_2023::GetTrgtPosRequest :definition-)
      "# GetTrgtPos.srv
---
float64 target_x
float64 target_y

")

(setf (get assignment_2_2023::GetTrgtPosResponse :md5sum-) "69bccf2d816940d53024849772a83192")
(setf (get assignment_2_2023::GetTrgtPosResponse :datatype-) "assignment_2_2023/GetTrgtPosResponse")
(setf (get assignment_2_2023::GetTrgtPosResponse :definition-)
      "# GetTrgtPos.srv
---
float64 target_x
float64 target_y

")



(provide :assignment_2_2023/GetTrgtPos "69bccf2d816940d53024849772a83192")


