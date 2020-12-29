#!/bin/bash

echo "This will overwrite shell and desktop configuration files. Continue? (y/n)"

read response

if [ "$response" != "y" ]; then
	exit
fi

cp -R .Xauthority .config .fonts .gtkrc-2.0 .profile .themes .xinitrc .zshrc config scripts ~

if [ ! -f "~/.xprofile" ]; then
	if [ ! -L "~/.xprofile" ]; then
		ln -s ~/.xinitrc ~/.xprofile
	fi
fi

if [ -d "~/.mozilla/firefox" ]; then
	if [ ! -L "~/config/firefox-profile" ]; then
		ln -s ~/.mozilla/firefox/*.default-release ~/config/firefox-profile
		cp -R ~/config/firefox/* ~/config/firefox-profile
	fi
fi

pip install i3ipc
