Docker Clojure
====

My Clojure workstation.

* FROM [clojure](https://hub.docker.com/_/clojure)
* Set default user to redraiment.
* Setup cider-nrepl.
* Remove default entrypoint, and use `lein repl` for instead.

# Usage

1: start an empty headless nREPL on port 9999 in background.

```shell
docker run --rm -d -p 9999:9999 redraiment/clojure
```

Now you can use cider to connect nREPL.

2: create a new appliation project.

```shell
docker run --rm -v $PWD:/home/redraiment/workspaces redraiment/clojure lein new app me.zzp/bootstrap
```

3: build an uberjar.

```shell
docker run --rm -v $PWD:/home/redraiment/workspaces redraiment/clojure lein uberjar
```
