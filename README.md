To build:
docker build -t <image_name>

To run:
docker run -it -p 5900:5900 <image_name_or_id>


Example:
docker build -t docker-vnc .
docker run -it -p 5900:5900 docker-vnc
