To build:
docker build -t <image_name>

To run:
docker run -it -p 5900:5900 <image_name_or_id>

Example:
docker build -t docker-centos-vnc .
docker run -ti -p 5900:5900 docker-centos-vnc

Once the container is running connect to it by a vncviewer
via localhost:5900