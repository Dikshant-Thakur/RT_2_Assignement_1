
(cl:in-package :asdf)

(defsystem "assignment_2_2023-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetTrgtPos" :depends-on ("_package_GetTrgtPos"))
    (:file "_package_GetTrgtPos" :depends-on ("_package"))
    (:file "LastStatus" :depends-on ("_package_LastStatus"))
    (:file "_package_LastStatus" :depends-on ("_package"))
  ))