This is a barebones docker container that allows for a VNC connection to show GUI applications. You can use any type of vnc viewer to remote in and view the container. I preferred using RealVNC. 

# Usage

### To build:
`docker build -t <image_name>`

### To run:
`docker run -dt -p 5900:5900 <image_name_or_id>`

  OR if you want to run it interactively you can run it with this

`docker run -it -p 5900:5900 <image_name_or_id>`

### To connect:
Connect via vncviewer: `localhost:5900`


### Example:
`docker build -t docker-vnc .`
`docker run -it -p 5900:5900 docker-vnc`
