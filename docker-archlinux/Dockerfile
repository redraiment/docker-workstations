FROM archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2022.11.18"
LABEL description="ArchLinux Workstation"

COPY mirrorlist /etc/pacman.d/
RUN pacman -Syy --noconfirm && \
    pacman -Fy --noconfirm && \
    pacman -Syu --noconfirm && \
    pacman -S --noconfirm vim sudo fish ripgrep tree && \
    useradd -m -G wheel -s /usr/bin/fish redraiment && \
    sudo -u redraiment mkdir -p /home/redraiment/workspaces
COPY sudoers /etc/

USER redraiment
WORKDIR /home/redraiment
CMD /usr/bin/fish
