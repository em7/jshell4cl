(load "quicklisp.lisp")
(quicklisp-quickstart:install)
(push (uiop:getcwd) asdf:*central-registry*)
(asdf:load-system :jshell4cl)
(asdf:test-system :jshell4cl)

