#!/bin/sh

sleep 5
while true; do
sleep 0.3 && pkill -SIGRTMIN+8 waybar
done
