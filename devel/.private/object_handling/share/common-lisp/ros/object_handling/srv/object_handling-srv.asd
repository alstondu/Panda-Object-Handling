
(cl:in-package :asdf)

(defsystem "object_handling-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "example" :depends-on ("_package_example"))
    (:file "_package_example" :depends-on ("_package"))
  ))