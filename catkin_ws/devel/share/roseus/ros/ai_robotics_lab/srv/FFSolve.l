;; Auto-generated. Do not edit!


(when (boundp 'ai_robotics_lab::FFSolve)
  (if (not (find-package "AI_ROBOTICS_LAB"))
    (make-package "AI_ROBOTICS_LAB"))
  (shadow 'FFSolve (find-package "AI_ROBOTICS_LAB")))
(unless (find-package "AI_ROBOTICS_LAB::FFSOLVE")
  (make-package "AI_ROBOTICS_LAB::FFSOLVE"))
(unless (find-package "AI_ROBOTICS_LAB::FFSOLVEREQUEST")
  (make-package "AI_ROBOTICS_LAB::FFSOLVEREQUEST"))
(unless (find-package "AI_ROBOTICS_LAB::FFSOLVERESPONSE")
  (make-package "AI_ROBOTICS_LAB::FFSOLVERESPONSE"))

(in-package "ROS")





(defclass ai_robotics_lab::FFSolveRequest
  :super ros::object
  :slots (_domain _problem ))

(defmethod ai_robotics_lab::FFSolveRequest
  (:init
   (&key
    ((:domain __domain) "")
    ((:problem __problem) "")
    )
   (send-super :init)
   (setq _domain (string __domain))
   (setq _problem (string __problem))
   self)
  (:domain
   (&optional __domain)
   (if __domain (setq _domain __domain)) _domain)
  (:problem
   (&optional __problem)
   (if __problem (setq _problem __problem)) _problem)
  (:serialization-length
   ()
   (+
    ;; string _domain
    4 (length _domain)
    ;; string _problem
    4 (length _problem)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _domain
       (write-long (length _domain) s) (princ _domain s)
     ;; string _problem
       (write-long (length _problem) s) (princ _problem s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _domain
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _domain (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _problem
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _problem (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ai_robotics_lab::FFSolveResponse
  :super ros::object
  :slots (_solution ))

(defmethod ai_robotics_lab::FFSolveResponse
  (:init
   (&key
    ((:solution __solution) "")
    )
   (send-super :init)
   (setq _solution (string __solution))
   self)
  (:solution
   (&optional __solution)
   (if __solution (setq _solution __solution)) _solution)
  (:serialization-length
   ()
   (+
    ;; string _solution
    4 (length _solution)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _solution
       (write-long (length _solution) s) (princ _solution s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _solution
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _solution (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ai_robotics_lab::FFSolve
  :super ros::object
  :slots ())

(setf (get ai_robotics_lab::FFSolve :md5sum-) "d96a9b13dd37d100fa5867634e70f142")
(setf (get ai_robotics_lab::FFSolve :datatype-) "ai_robotics_lab/FFSolve")
(setf (get ai_robotics_lab::FFSolve :request) ai_robotics_lab::FFSolveRequest)
(setf (get ai_robotics_lab::FFSolve :response) ai_robotics_lab::FFSolveResponse)

(defmethod ai_robotics_lab::FFSolveRequest
  (:response () (instance ai_robotics_lab::FFSolveResponse :init)))

(setf (get ai_robotics_lab::FFSolveRequest :md5sum-) "d96a9b13dd37d100fa5867634e70f142")
(setf (get ai_robotics_lab::FFSolveRequest :datatype-) "ai_robotics_lab/FFSolveRequest")
(setf (get ai_robotics_lab::FFSolveRequest :definition-)
      "string domain
string problem
---
string solution

")

(setf (get ai_robotics_lab::FFSolveResponse :md5sum-) "d96a9b13dd37d100fa5867634e70f142")
(setf (get ai_robotics_lab::FFSolveResponse :datatype-) "ai_robotics_lab/FFSolveResponse")
(setf (get ai_robotics_lab::FFSolveResponse :definition-)
      "string domain
string problem
---
string solution

")



(provide :ai_robotics_lab/FFSolve "d96a9b13dd37d100fa5867634e70f142")


