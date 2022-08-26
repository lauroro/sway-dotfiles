#!/bin/bash

chosen=$(echo -e "襤\nﰇ\n\n\n\n" | wofi -c ~/.config/wofi/powermenu/config -s ~/.config/wofi/powermenu/style.css)	

if [[ $chosen = "" ]]; then
	swaymsg exit
elif [[ $chosen = "" ]]; then
  swaylock
elif [[ $chosen = "襤" ]]; then
	systemctl poweroff
elif [[ $chosen = "ﰇ" ]]; then
	systemctl reboot
elif [[ $chosen = "" ]]; then
	systemctl suspend
fi
