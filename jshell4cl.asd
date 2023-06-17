(defsystem "jshell4cl"
  :version "0.0.1"
  :description "JShell integration to Common Lisp"
  :author "em7"
  :license "MIT"
  :depends-on (#:trivial-garbage #:uiop)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :in-order-to ((test-op (test-op "jshell4cl/tests"))))

(defsystem "jshell4cl/tests"
  :version "0.0.1"
  :description "JShell integration to Common Lisp"
  :author "em7"
  :license "MIT"
  :depends-on (#:jshell4cl
               #:fiveam)
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :perform (test-op (op c)
                    (uiop:symbol-call :fiveam :run!
                                      (uiop:find-symbol* 'all-tests :jshell4cl/tests/main))))
