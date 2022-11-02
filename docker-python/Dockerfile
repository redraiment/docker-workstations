FROM redraiment/archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2022.11.02"
LABEL description="Python development environment"

COPY --chown=redraiment:redraiment pip.conf /home/redraiment/.pip/
COPY --chown=redraiment:redraiment pyenv.fish /home/redraiment/.config/fish/conf.d/
RUN sudo pacman -S --noconfirm gcc make python pyenv
EXPOSE 8888
