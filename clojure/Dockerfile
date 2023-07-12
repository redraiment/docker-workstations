FROM redraiment/archlinux
LABEL author="Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2023.07.12"
LABEL description="Clojure development environment"

RUN sudo pacman -S --noconfirm jdk-openjdk leiningen

EXPOSE 9999

CMD ["lein", "repl", ":headless", ":host", "0.0.0.0", ":port", "9999"]
