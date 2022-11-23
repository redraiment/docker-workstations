# Clojure docker image

This [repository](https://github.com/redraiment/docker-clojure) is my Clojure development environment.

* FROM [redraiment/ArchLinux](https://hub.docker.com/redraiment/archlinux)
* Install openjdk8 and leiningen.
* Setting Maven central and clojars mirrors.

## Usage

1: start an empty headless nREPL on port 9999 in the background.

```shell
docker run --rm -v $HOME/.m2:/home/redraiment/.m2 -v $HOME/.lein:/home/redraiment/.lein -d -p 9999:9999 redraiment/clojure
```

Now you can use cider to connect nREPL.

2: create a new application project.

```shell
docker run --rm -v $HOME/.m2:/home/redraiment/.m2 -v $HOME/.lein:/home/redraiment/.lein -v $PWD:/home/redraiment/workspaces redraiment/clojure lein new app me.zzp/bootstrap
```

3: build an uberjar.

```shell
docker run --rm -v $HOME/.m2:/home/redraiment/.m2 -v $HOME/.lein:/home/redraiment/.lein -v $PWD:/home/redraiment/workspaces redraiment/clojure lein uberjar
```
