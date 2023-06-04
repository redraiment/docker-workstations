FROM alpine
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2023.06.04"
LABEL description="Alpine Workstation"

RUN sed -i 's#https\?://[^/]*#https://mirrors.ustc.edu.cn#g' /etc/apk/repositories \
 && apk update \
 && apk add sudo fish vim ripgrep curl \
 && addgroup sudo \
 && adduser -S -s /usr/bin/fish -h /home/redraiment -G sudo redraiment \
 && echo '%sudo   ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo-group

USER redraiment
WORKDIR /home/redraiment
CMD /usr/bin/fish
