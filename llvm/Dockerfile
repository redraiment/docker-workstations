FROM redraiment/archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2022.11.23"
LABEL description="C development environment"

RUN sudo pacman -S --noconfirm \
    clang llvm lld lldb \
    make cmake automake autoconf \
    flex bison
