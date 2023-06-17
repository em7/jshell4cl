(load "quicklisp.lisp")
(quicklisp-quickstart:install)
(push (uiop:getcwd) asdf:*central-registry*)
(ql:quickload :jshell4cl)
(asdf:load-system :jshell4cl)
(asdf:test-system :jshell4cl)

