FROM haskell
LABEL author="Zhang, Zepeng <redraiment@gmail.com>"
LABEL version="2022.10.14"
LABEL description="Haskell Workstation"

RUN useradd -m -G root -s /bin/bash redraiment
COPY --chown=redraiment:redraiment config.yaml /home/redraiment/.stack/
COPY --chown=redraiment:redraiment global-hints-cache.yaml /home/redraiment/.stack/pantry/
RUN su redraiment -c 'stack update && stack setup --install-ghc'

USER redraiment:redraiment
WORKDIR /home/redraiment/workspaces
