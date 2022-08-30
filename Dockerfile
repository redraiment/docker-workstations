FROM redraiment/archlinux
MAINTAINER "Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2022.08.30"
LABEL description="Python development environment"

COPY --chown=redraiment:redraiment pip.conf /home/redraiment/.pip/
RUN sudo pacman -S --noconfirm python python-pip && \
    env PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/home/redraiment/.local/bin PYTHONWARNINGS="ignore:Unverified HTTPS request" pip install -U ipython jupyter

EXPOSE 8888
ENTRYPOINT ["env", "PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/home/redraiment/.local/bin"]
CMD ipython
