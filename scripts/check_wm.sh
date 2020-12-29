#!/bin/bash

while [ -z "$WM" ]
do
	WMINFO=$(wmctrl -m | grep "Name:")
	
	IFS=': '
	read -ra ADDR <<< "$WMINFO"
	
	if [ ${#ADDR[@]} -gt 1 ]; then
		WM=${ADDR[1]}
	fi
done

if [ "$WM" != "KWin" ]; then
	export QT_QPA_PLATFORMTHEME=qt5ct
fi
