FROM mrchoke/texlive:2021
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Berlin

RUN tlmgr update --self && \
    tlmgr update --all && \
    tlmgr install latexmk minted

RUN apt-get update -yq && \
    apt-get install -yq biber python3-pygments graphviz inkscape gnuplot && \
    rm -rf /var/lib/apt/lists/*

COPY .latexmkrc /root/.latexmkrc
COPY ./biber-linux_arm64 /usr/local/bin/biber
USER root

RUN mktexlsr
RUN luaotfload-tool --update

WORKDIR /home
CMD [ "/bin/bash" ]

