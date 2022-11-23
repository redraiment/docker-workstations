# ArchLinux docker image

This ArchLinux [repository](https://github.com/redraiment/docker-archlinux) is the base for other Docker repositories.

## Flavors provide

* FROM [ArchLinux](https://hub.docker.com/_/archlinux).
* Set up USTC mirrors.
* Set default user to redraiment.
* Set default shell to fish.

## Usage

To use the image in your projects, simply use

```
FROM redraiment/archlinux
```

## The `latest` release

I will rebuild all Docker images from time to time. You can manually update within the container by running `sudo pacman -Syu --noconfirm`.

## Derived repositories

* [redraiment/docker-clojure](https://hub.docker.com/r/redraiment/clojure): [docker-clojure](https://github.com/redraiment/docker-clojure). My Clojure development environment provides Clojure and Leiningen.
* [redraiment/docker-llvm](https://hub.docker.com/r/redraiment/llvm): [docker-llvm](https://github.com/redraiment/docker-llvm). My C/C++ development environment provides GCC, Clang, LLVM, CMake, and make.
* [redraiment/docker-python](https://hub.docker.com/r/redraiment/python): [docker-python](https://github.com/redraiment/docker-python). My Python development environment provides ipython and jupyter.
