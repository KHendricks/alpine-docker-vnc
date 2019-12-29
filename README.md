To build:
docker build -t <image_name>

To run:
docker run -p 6080:80 -p 5900:5900 <image_name_or_id>


Example:
docker build -t docker-vnc .
docker run -p 6080:80 -p 5900:5900 docker-vnc

Once the container is running connect to it via browser at
http://127.0.0.1:6080/

Thanks for:
https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc