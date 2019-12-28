FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y x11vnc xvfb firefox vim python3

RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 1234 ~/.vnc/passwd

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]