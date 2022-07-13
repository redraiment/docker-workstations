FROM clojure
LABEL author="Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="0.0.1"
LABEL description="Clojure Workstation"

RUN useradd -m -G root -s /usr/bin/bash redraiment
COPY profiles.clj /root/.lein/profiles.clj
RUN lein with-profile repl version \
 && mv /root/.lein /home/redraiment/ \
 && chown -R redraiment:redraiment /home/redraiment/.lein \
 && mv /root/.m2 /home/redraiment/ \
 && chown -R redraiment:redraiment /home/redraiment/.m2

USER redraiment:redraiment
WORKDIR /home/redraiment/workspaces
EXPOSE 9999

ENTRYPOINT []
CMD ["lein", "repl", ":headless", ":host", "0.0.0.0", ":port", "9999"]
