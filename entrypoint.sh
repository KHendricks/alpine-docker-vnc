#! /bin/sh
Xvfb :1 -screen 0 1280x720x16 &
/usr/bin/x11vnc -display :1.0 -usepw &
DISPLAY=:1.0
export DISPLAY
fluxbox&

# Sets up the fluxbox UI
sleep 5
feh --bg-scale /fluxbox_config/wallpaper.jpg
cp /fluxbox_config/menu ~/.fluxbox/
cp /fluxbox_config/init ~/.fluxbox/
cp /fluxbo_config/subpar_theme /usr/share/fluxbox/styles

/bin/sh
