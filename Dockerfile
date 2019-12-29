FROM ubuntu:disco

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y x11vnc \
        xvfb \
        firefox \
        vim \
        python3 \
        python \
        git \
        mate-desktop-environment \
        ubuntu-mate-themes \
        openbox \
        menu
RUN apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*
RUN cd $HOME \
    && git clone https://github.com/novnc/noVNC
RUN cd ~/noVNC/utils \
    && git clone https://github.com/novnc/websockify.git websockify

EXPOSE 6080

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mate-session"]