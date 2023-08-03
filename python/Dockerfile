FROM redraiment/archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2023.08.03"
LABEL description="Python development environment"

COPY --chown=redraiment:redraiment pip.conf /home/redraiment/.pip/
COPY --chown=redraiment:redraiment pyenv.fish /home/redraiment/.config/fish/conf.d/
RUN sudo pacman --noconfirm -S gcc make python pyenv openssl
EXPOSE 8888
