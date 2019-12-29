#!/bin/bash

# Starts the dbus service to get rid of the dbus warnings
dbus-uuidgen > /var/lib/dbus/machine-id
mkdir -p /var/run/dbus
dbus-daemon --config-file=/usr/share/dbus-1/system.conf

export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
sleep 5
mate-session&
x11vnc -display :1 -nopw -listen localhost -xkb -ncache 10 -ncache_cr -forever &
cd /root/noVNC && ln -s vnc_auto.html index.html && ./utils/launch.sh --vnc localhost:5900