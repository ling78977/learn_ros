;; Auto-generated. Do not edit!


(when (boundp 'serve::AddInts)
  (if (not (find-package "SERVE"))
    (make-package "SERVE"))
  (shadow 'AddInts (find-package "SERVE")))
(unless (find-package "SERVE::ADDINTS")
  (make-package "SERVE::ADDINTS"))
(unless (find-package "SERVE::ADDINTSREQUEST")
  (make-package "SERVE::ADDINTSREQUEST"))
(unless (find-package "SERVE::ADDINTSRESPONSE")
  (make-package "SERVE::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass serve::AddIntsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod serve::AddIntsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass serve::AddIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod serve::AddIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass serve::AddInts
  :super ros::object
  :slots ())

(setf (get serve::AddInts :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get serve::AddInts :datatype-) "serve/AddInts")
(setf (get serve::AddInts :request) serve::AddIntsRequest)
(setf (get serve::AddInts :response) serve::AddIntsResponse)

(defmethod serve::AddIntsRequest
  (:response () (instance serve::AddIntsResponse :init)))

(setf (get serve::AddIntsRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get serve::AddIntsRequest :datatype-) "serve/AddIntsRequest")
(setf (get serve::AddIntsRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")

(setf (get serve::AddIntsResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get serve::AddIntsResponse :datatype-) "serve/AddIntsResponse")
(setf (get serve::AddIntsResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")



(provide :serve/AddInts "4781436a0c2affec8025955a6041e481")


