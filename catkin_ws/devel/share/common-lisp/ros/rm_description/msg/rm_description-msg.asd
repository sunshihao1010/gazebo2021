
(cl:in-package :asdf)

(defsystem "rm_description-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pw" :depends-on ("_package_pw"))
    (:file "_package_pw" :depends-on ("_package"))
  ))