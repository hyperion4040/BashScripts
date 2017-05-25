#!/bin/bash
if [ -z "$1" ]; then
		cd ~/Dokumenty/Projects
else
	case $1 in
		clion) 
			cd ~/Dokumenty/Projects/CLionProjects;;
		idea) 
			cd ~/Dokumenty/Projects/IdeaProjects;;
		pychar) 
			cd ~/Dokumenty/Projects/PycharmProjects;;
				
		db) 
			cd ~/Dokumenty/Projects/AdvancedDB;;
		bash) 
			cd ~/Dokumenty/Projects/BashScripts;;
		*)
			echo "wrong option"
	esac

fi
exec bash


