#!/bin/bash

RET=$(echo -e "Shutdown\nReboot\nSuspend\nHibernate\nLogout\nsxhkd_reload\nbspwm_reload\nCancel" | dmenu -nb '#13191f' -sf '#f5f5f5' -sb '#003b4a' -nf '#5c8894' -fn 'Droid Sans Mono-13' -l 8)




case $RET in
	Shutdown) ./shutdown.sh ;;
	Reboot) ./reboot.sh ;;
	Logout) bspc quit ;;
	Suspend) systemctl suspend ;;
	Hibernate) systemctl hibernate ;;
	sxhkd_reload) pkill -USR1 -x sxhkd ;;
	bspwm_reload) bspc wm -r ;;
	*) ;;
esac
