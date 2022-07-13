Docker Clojure
====

My Clojure workstation.

* FROM [clojure](https://hub.docker.com/_/clojure)
* Set default user to redraiment.
* Setup cider-nrepl.
* Remove default entrypoint, and use `lein repl` for instead.
