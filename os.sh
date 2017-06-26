#!/bin/bash

if [ -z "$1" ]; then
		df -h 
	elif [ "$1" == monitor ]; then
		gnome-system-monitor
	elif [ "$1" == disk ]; then
		gksudo baobab
	else
		echo "wrong command"

fi
