#!/bin/bash

chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | rofi -dmenu -i)

if [[ $chosen = "Logout" ]]; then
    pkill leftwm
elif [[ $chosen = "Shutdown" ]]; then
	sudo poweroff
elif [[ $chosen = "Reboot" ]]; then
	sudo reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
fi
