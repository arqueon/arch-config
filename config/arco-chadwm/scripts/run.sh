#!/bin/sh

#xrdb merge ~/.Xresources 
#xbacklight -set 10 &
#xset r rate 200 50 &

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
run "dex $HOME/.config/autostart/arcolinux-welcome-app.desktop"
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
#autorandr horizontal
~/.screenlayout/monitor.sh &
export BROWSER=/usr/bin/google-chrome-stable
xsettingsd &

setxkbmap -option caps:super

/usr/lib/geoclue-2.0/demos/agent &
run "nm-applet"
run "pamac-tray"
run "variety"
run "xfce4-power-manager"
#run "blueberry-tray"
run "blueman-applet"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/arco-chadwm/picom/picom.conf &
run "numlockx on"
run "volumeicon"
pasystray &

sxhkd -c ~/.config/arco-chadwm/sxhkd/sxhkdrc &
#run "nitrogen --restore"
run "conky -c $HOME/.config/arco-chadwm/conky/system-overview"
#you can set wallpapers in themes as well
feh --bg-fill /usr/share/backgrounds/archlinux/arch-wallpaper.jpg &
feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
#feh --randomize --bg-fill /home/erik/Insync/Apps/Wallhaven/*
#feh --bg-fill ~/.config/arco-chadwm/wallpaper/chadwm.jpg &

#wallpaper for other Arch based systems
#feh --bg-fill /usr/share/archlinux-tweak-tool/data/wallpaper/wallpaper.png &
#run applications from startup

run insync start &
run copyq &
run /opt/ExpanDrive/expandrive %U &
run redshift-gtk &
run flameshot &
run kdeconnect-indicator &
run wmname LG3D &
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"

~/.config/arco-chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
