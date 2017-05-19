#!/bin/bash

if [ -z "$1" ]; then
		sudo apt-get clean
	elif [ "$1" == rm ]; then
		sudo apt-get autoremove 
	else
		echo "wrong command"
fi
