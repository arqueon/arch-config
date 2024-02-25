#!/bin/bash
#   ___ _____ ___ _     _____   ____  _             _    
#  / _ \_   _|_ _| |   | ____| / ___|| |_ __ _ _ __| |_  
# | | | || |  | || |   |  _|   \___ \| __/ _` | '__| __| 
# | |_| || |  | || |___| |___   ___) | || (_| | |  | |_  
#  \__\_\|_| |___|_____|_____| |____/ \__\__,_|_|   \__| 
#                                                        
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# My screen resolution
# xrandr --rate 120
.screenlayout/monitor.sh &

# For Virtual Machine 
# xrandr --output Virtual-1 --mode 1920x1080

# Keyboard layout
#setxkbmap us
setxkbmap -layout us -variant intl &

# Load picom
# picom &

# Load power manager
xfce4-power-manager &

# Load notification service
dunst &

# Setup Wallpaper and update colors
~/dotfiles/qtile/scripts/wallpaper.sh init

export BROWSER=/usr/bin/google-chrome-stable

#starting utility applications at boot time
/usr/lib/geoclue-2.0/demos/agent &
run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
#blueberry-tray &
blueman-applet &
picom --config $HOME/.config/qtile/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

#starting user applications at boot time
#run volumeicon &
#run pasystray &
run pnmixer &
#run discord &
#nitrogen --restore &
#run caffeine -a &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
run insync start &
run copyq &
run /opt/ExpanDrive/expandrive %U &
run redshift-gtk &
run flameshot &
run kdeconnect-indicator &
run fusuma -d &
#run spotify &
#run atom &
#run telegram-desktop &
#run /usr/bin/octopi-notifier &
