FROM alpine:3.11

# Needed packages
RUN apk --no-cache add \
    x11vnc \
    xvfb \
    fluxbox \
    feh \
    xterm

# Optional packages
RUN apk --no-cache add \
    vim \
    firefox-esr \
    python3

# Create x11vnc password
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

EXPOSE 5900

COPY fluxbox_config /fluxbox_config
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]