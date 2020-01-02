#! /bin/sh

# Starts the display and runs the window manager
Xvfb :1 -screen 0 1280x720x16 &
/usr/bin/x11vnc -display :1.0 -usepw &
DISPLAY=:1.0
export DISPLAY
fluxbox&

# Sets up the fluxbox UI
sleep 5
feh --bg-scale /fluxbox_config/wallpaper.jpg
cp /fluxbox_config/menu ~/.fluxbox/

/bin/sh
