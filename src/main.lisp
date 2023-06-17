(defpackage :jshell4cl/main
  (:use #:cl)
  (:export #:hello-world))
(in-package #:jshell4cl/main)

(defun hello-world ()
  (let ((hello-message "Hello World from :jshell4cl"))
    (format t "~A~%" hello-message)
    hello-message))
