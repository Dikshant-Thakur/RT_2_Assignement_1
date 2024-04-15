;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::LastStatus)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'LastStatus (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::LASTSTATUS")
  (make-package "ASSIGNMENT_2_2023::LASTSTATUS"))
(unless (find-package "ASSIGNMENT_2_2023::LASTSTATUSREQUEST")
  (make-package "ASSIGNMENT_2_2023::LASTSTATUSREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::LASTSTATUSRESPONSE")
  (make-package "ASSIGNMENT_2_2023::LASTSTATUSRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::LastStatusRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::LastStatusRequest
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

(defclass assignment_2_2023::LastStatusResponse
  :super ros::object
  :slots (_distance_to_target _average_speed ))

(defmethod assignment_2_2023::LastStatusResponse
  (:init
   (&key
    ((:distance_to_target __distance_to_target) 0.0)
    ((:average_speed __average_speed) 0.0)
    )
   (send-super :init)
   (setq _distance_to_target (float __distance_to_target))
   (setq _average_speed (float __average_speed))
   self)
  (:distance_to_target
   (&optional __distance_to_target)
   (if __distance_to_target (setq _distance_to_target __distance_to_target)) _distance_to_target)
  (:average_speed
   (&optional __average_speed)
   (if __average_speed (setq _average_speed __average_speed)) _average_speed)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_to_target
    8
    ;; float64 _average_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_to_target
       (sys::poke _distance_to_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _average_speed
       (sys::poke _average_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_to_target
     (setq _distance_to_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _average_speed
     (setq _average_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment_2_2023::LastStatus
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::LastStatus :md5sum-) "f6cfeb7770557ec0e7e7227af7085b94")
(setf (get assignment_2_2023::LastStatus :datatype-) "assignment_2_2023/LastStatus")
(setf (get assignment_2_2023::LastStatus :request) assignment_2_2023::LastStatusRequest)
(setf (get assignment_2_2023::LastStatus :response) assignment_2_2023::LastStatusResponse)

(defmethod assignment_2_2023::LastStatusRequest
  (:response () (instance assignment_2_2023::LastStatusResponse :init)))

(setf (get assignment_2_2023::LastStatusRequest :md5sum-) "f6cfeb7770557ec0e7e7227af7085b94")
(setf (get assignment_2_2023::LastStatusRequest :datatype-) "assignment_2_2023/LastStatusRequest")
(setf (get assignment_2_2023::LastStatusRequest :definition-)
      "# LastStatus.srv
---
float64 distance_to_target
float64 average_speed

")

(setf (get assignment_2_2023::LastStatusResponse :md5sum-) "f6cfeb7770557ec0e7e7227af7085b94")
(setf (get assignment_2_2023::LastStatusResponse :datatype-) "assignment_2_2023/LastStatusResponse")
(setf (get assignment_2_2023::LastStatusResponse :definition-)
      "# LastStatus.srv
---
float64 distance_to_target
float64 average_speed

")



(provide :assignment_2_2023/LastStatus "f6cfeb7770557ec0e7e7227af7085b94")


