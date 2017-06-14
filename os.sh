#!/bin/bash

if [ -z "$1" ]; then
	gksudo baobab
	elif [ "$1" == monitor ]; then
		gnome-system-monitor
	else
		echo "wrong command"

fi
