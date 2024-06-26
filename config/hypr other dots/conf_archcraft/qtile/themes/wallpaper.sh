#!/usr/bin/env bash

## Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
##
## Apply wallpaper on qtile startup

WALLPAPER='/home/ruben/.config/qtile/themes/dracula/wallpaper'

## For single monitor
#hsetroot -root -cover "$WALLPAPER"

## For all monitors
hsetroot -cover "$WALLPAPER"
