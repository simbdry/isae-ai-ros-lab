; Auto-generated. Do not edit!


(cl:in-package ai_robotics_lab-srv)


;//! \htmlinclude FFSolve-request.msg.html

(cl:defclass <FFSolve-request> (roslisp-msg-protocol:ros-message)
  ((domain
    :reader domain
    :initarg :domain
    :type cl:string
    :initform "")
   (problem
    :reader problem
    :initarg :problem
    :type cl:string
    :initform ""))
)

(cl:defclass FFSolve-request (<FFSolve-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FFSolve-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FFSolve-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robotics_lab-srv:<FFSolve-request> is deprecated: use ai_robotics_lab-srv:FFSolve-request instead.")))

(cl:ensure-generic-function 'domain-val :lambda-list '(m))
(cl:defmethod domain-val ((m <FFSolve-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robotics_lab-srv:domain-val is deprecated.  Use ai_robotics_lab-srv:domain instead.")
  (domain m))

(cl:ensure-generic-function 'problem-val :lambda-list '(m))
(cl:defmethod problem-val ((m <FFSolve-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robotics_lab-srv:problem-val is deprecated.  Use ai_robotics_lab-srv:problem instead.")
  (problem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FFSolve-request>) ostream)
  "Serializes a message object of type '<FFSolve-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'domain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'domain))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'problem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'problem))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FFSolve-request>) istream)
  "Deserializes a message object of type '<FFSolve-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'domain) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'domain) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'problem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'problem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FFSolve-request>)))
  "Returns string type for a service object of type '<FFSolve-request>"
  "ai_robotics_lab/FFSolveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FFSolve-request)))
  "Returns string type for a service object of type 'FFSolve-request"
  "ai_robotics_lab/FFSolveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FFSolve-request>)))
  "Returns md5sum for a message object of type '<FFSolve-request>"
  "d96a9b13dd37d100fa5867634e70f142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FFSolve-request)))
  "Returns md5sum for a message object of type 'FFSolve-request"
  "d96a9b13dd37d100fa5867634e70f142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FFSolve-request>)))
  "Returns full string definition for message of type '<FFSolve-request>"
  (cl:format cl:nil "string domain~%string problem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FFSolve-request)))
  "Returns full string definition for message of type 'FFSolve-request"
  (cl:format cl:nil "string domain~%string problem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FFSolve-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'domain))
     4 (cl:length (cl:slot-value msg 'problem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FFSolve-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FFSolve-request
    (cl:cons ':domain (domain msg))
    (cl:cons ':problem (problem msg))
))
;//! \htmlinclude FFSolve-response.msg.html

(cl:defclass <FFSolve-response> (roslisp-msg-protocol:ros-message)
  ((solution
    :reader solution
    :initarg :solution
    :type cl:string
    :initform ""))
)

(cl:defclass FFSolve-response (<FFSolve-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FFSolve-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FFSolve-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robotics_lab-srv:<FFSolve-response> is deprecated: use ai_robotics_lab-srv:FFSolve-response instead.")))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <FFSolve-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robotics_lab-srv:solution-val is deprecated.  Use ai_robotics_lab-srv:solution instead.")
  (solution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FFSolve-response>) ostream)
  "Serializes a message object of type '<FFSolve-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FFSolve-response>) istream)
  "Deserializes a message object of type '<FFSolve-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'solution) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FFSolve-response>)))
  "Returns string type for a service object of type '<FFSolve-response>"
  "ai_robotics_lab/FFSolveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FFSolve-response)))
  "Returns string type for a service object of type 'FFSolve-response"
  "ai_robotics_lab/FFSolveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FFSolve-response>)))
  "Returns md5sum for a message object of type '<FFSolve-response>"
  "d96a9b13dd37d100fa5867634e70f142")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FFSolve-response)))
  "Returns md5sum for a message object of type 'FFSolve-response"
  "d96a9b13dd37d100fa5867634e70f142")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FFSolve-response>)))
  "Returns full string definition for message of type '<FFSolve-response>"
  (cl:format cl:nil "string solution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FFSolve-response)))
  "Returns full string definition for message of type 'FFSolve-response"
  (cl:format cl:nil "string solution~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FFSolve-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'solution))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FFSolve-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FFSolve-response
    (cl:cons ':solution (solution msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FFSolve)))
  'FFSolve-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FFSolve)))
  'FFSolve-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FFSolve)))
  "Returns string type for a service object of type '<FFSolve>"
  "ai_robotics_lab/FFSolve")