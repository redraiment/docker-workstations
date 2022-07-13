Docker Clojure
====

My Clojure workstation.

* FROM [https://hub.docker.com/_/clojure](clojure)
* Set default user to redraiment.
* Setup cider-nrepl.
* Remove default entrypoint, and use `lein repl` for instead.
