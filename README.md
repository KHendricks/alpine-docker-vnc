This is a barebones docker container that allows for a VNC connection to show GUI applications. You can use any type of vnc viewer to remote in and view the container. I preferred using RealVNC. 

# Usage

### To run the image:
`docker run -dt -p 5900:5900 subparkyle/alpine-docker-vnc:1.0`

### Or to build and run directly:
`docker build -t <image_name>`
`docker run -dt -p 5900:5900 <image_name_or_id>`

### To connect to the container:
Connect via vncviewer: `localhost:5900`

Login using password `1234`

