;; installs quicklisp and runs tests in a CI/CD pipeline

(load "quicklisp.lisp")
(quicklisp-quickstart:install)
(push (uiop:getcwd) asdf:*central-registry*)

(ql:quickload :jshell4cl)
(ql:quickload :jshell4cl/tests)

(asdf:load-system :jshell4cl)
(if (jshell4cl/tests/main:test-quasi)
  (exit :code 0)
  (exit :code 1))

