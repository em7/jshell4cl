(defpackage :jshell4cl/java-process
  (:documentation "Manages the JShell process.")
  (:use #:cl))

(in-package #:jshell4cl/java-process)

(defvar *ext-process-command* "jshell"
  "String, the executable (or command) to launch, e.g. \"jshell\".")

(defvar *ext-process* nil
  "Most recently started subprocess.")

(defvar *current-ext-process-id* 0
  "Internal process ID. This is used to prevent garbage collector from deleting
objects in the wrong session.")

(defun ext-process-start (&optional (command *ext-process-command*))
  "Starts a new external process. Sets global variable `*EXT-PROCESS*' to the process
handle and returning it. `COMMAND' is a string with the command to run.
Defaults to `*EXT-RPOCESS-COMMAND*'."

  ;; TODO add support for callbacks, see py4cl
  ;; Path *base-pathname* is defined in py4cl.asd
  ;; Calculate full path to python script
  ;; (namestring (merge-pathnames #p"py4cl.py" py4cl/config:*base-directory*))

  (let ((ext-proc (uiop:launch-program command
                                       :input :stream
                                       :output :stream
                                       :error-output :stream)))
    (setf *ext-process* ext-proc)
    (incf *current-ext-process-id*)
    ext-proc))

(defun ext-process-alive-p (&optional (proc *ext-process*))
  "Returns non-NIL if ext-process is alive. Optionally, a `PROC' (a handle returned
by `EXT-PROCESS-START' may be passes in."
  (and proc
       (uiop:process-alive-p proc)))


