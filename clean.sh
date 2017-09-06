#!/bin/bash

if [ -z "$1" ]; then
		sudo apt-get clean
	elif [ "$1" == rm ]; then
		sudo apt-get autoremove
	elif [ "$1" == all ]; then
	    ubuntu-cleaner
	else
		echo "wrong command"
fi
