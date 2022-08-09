FROM redraiment/archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="0.2.0"
LABEL description="LLVM Workstation"

RUN sudo pacman -S --noconfirm clang llvm lld lldb
