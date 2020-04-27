
(cl:in-package :asdf)

(defsystem "ros_proj-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "customMsg" :depends-on ("_package_customMsg"))
    (:file "_package_customMsg" :depends-on ("_package"))
  ))