To build:
docker build -t <image_name>

To run:
docker run -dt -p 6080:6080 <image_name_or_id>

Example:
docker build -t docker-vnc .
docker run -dt -p 6080:6080 docker-vnc

Once the container is running connect to it via browser at
localhost:6080

Thanks for:
https://github.com/paimpozhil/docker-novnc