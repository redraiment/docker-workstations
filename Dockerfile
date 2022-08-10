FROM redraiment/archlinux
LABEL author="Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="0.0.1"
LABEL description="Clojure Workstation"

COPY --chown=redraiment:redraiment profiles.clj /home/redraiment/.lein/profiles.clj
COPY --chown=redraiment:redraiment leiningen-2.9.8-standalone.jar /home/redraiment/.lein/self-installs/
RUN sudo pacman -S --noconfirm jdk8-openjdk leiningen \
 && mkdir -p /home/redraiment/.m2/repository

EXPOSE 9999

CMD ["lein", "repl", ":headless", ":host", "0.0.0.0", ":port", "9999"]
