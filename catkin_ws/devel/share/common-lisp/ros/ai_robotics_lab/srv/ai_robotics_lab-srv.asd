
(cl:in-package :asdf)

(defsystem "ai_robotics_lab-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FFSolve" :depends-on ("_package_FFSolve"))
    (:file "_package_FFSolve" :depends-on ("_package"))
  ))