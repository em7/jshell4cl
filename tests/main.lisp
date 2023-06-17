(defpackage :jshell4cl/tests/main
  (:use #:cl
        #:jshell4cl/main
        #:fiveam)
  (:export #:run!
           #:all-tests))
(in-package :jshell4cl/tests/main)

(def-suite all-tests
  :description "The master suite")

(defun test-quasi ()
  (run! 'all-tests))

(in-suite all-tests)

(test test-hello-world
      (let ((expected "Hello World from :jshell4cl"))
        (is (eql expected (hello-world)))))