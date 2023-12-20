#/bin/sh
#  ___    _ _      _   _                 
# |_ _|__| | | ___| |_(_)_ __ ___   ___  
#  | |/ _` | |/ _ \ __| | '_ ` _ \ / _ \ 
#  | | (_| | |  __/ |_| | | | | | |  __/ 
# |___\__,_|_|\___|\__|_|_| |_| |_|\___| 
#                                        
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

timeswaylock=120
timeoff=125

if [ -f "/usr/bin/swayidle" ]; then
    echo "swayidle is installed."
    swayidle -w timeout $timeswaylock 'swaylock -f -c 000000' timeout $timeoff 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on' timeout 7500 'systemctl suspend'
else
    echo "swayidle not installed."
fi;


# sessionctl_idle() {
#     killall swayidle
#     /usr/bin/swayidle -w \
#         timeout 295 'loginctl lock-session' \
#         timeout 300 'swaymsg "output * dpms off"' \
#         resume  'swaymsg "output * dpms on"' \
#         timeout 600 'systemctl suspend' \
#         timeout 5 'if pgrep swaylock; then swaymsg "output * dpms off"; fi' \
#         resume 'if pgrep swaylock; then swaymsg "output * dpms on"; fi' \
#         before-sleep 'loginctl lock-session' \
#         after-resume  'sleep 2 && clamshell' \
#         lock 'systemctl --user start lock.target' \
#         unlock 'systemctl --user stop lock.target'
# }


