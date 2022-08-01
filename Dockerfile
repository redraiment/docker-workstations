FROM ubuntu
LABEL author="Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="0.0.1"
LABEL description="LLVM Workstation"

COPY sources.list /etc/apt/sources.list
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y clang lldb lld && \
    useradd -m -G root -s /usr/bin/bash redraiment

USER redraiment:redraiment
WORKDIR /home/redraiment/workspaces
