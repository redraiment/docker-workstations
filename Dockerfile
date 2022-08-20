FROM redraiment/archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2022.08.20"
LABEL description="LLVM Workstation"

RUN sudo pacman -S --noconfirm \
    clang llvm lld lldb \
    make cmake automake autoconf
