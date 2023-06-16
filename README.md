# jshell4cl
Integration of Java JShell into Common Lisp.

Similar to [Py4CL](https://github.com/bendudson/py4cl "Github link of Py4CL repository"), this starts `jshell` in a  separate process and allows for dynamic calls of Java. The aim of this project is to allow for exploratory programming from LISP REPL and dynamic generating of Java definitions from Common Lisp. When finished, Java definitions (the ones which should not change during normal "production" program execution) should be saved as `.java` files and compiled with `javac`. 

There are many ways of calling Java from Common Lisp. This one is meant to scratch a specific itch: I would benefit from a dynamic way of calling Java libraries and integration with Java ecosystem but without the need of using a specific Lisp implementation written in Java (Armed Bear Common Lisp, Clojure ...). ABCL and Clojure currently suffer from slow starts and are unable to deliver an application as a Lisp image. Embedding a JVM through JNI usually doesn't yield a dynamic-enough environment.

In many environments, fast starts are crucial. Both JVM and Common Lisp programs compiled natively (and Lisp programs delivered as images) start really fast. However, since the stream-based communication between two processes is pretty slow, this is a trade-off between fast start and fast program execution.

JShell can be embedded in existing Java applications, serving as a remote REPL.
https://docs.oracle.com/en/java/javase/20/docs/api/jdk.jshell/jdk/jshell/package-summary.html
