(load "quicklisp.lisp")
(quicklisp-quickstart:install)
(asdf:load-system :jshell4cl)
(asdf:test-system :jshell4cl)

