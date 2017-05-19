#!/bin/bash
if [ -z "$1" ]; then
		cd /home/hyperion/Dokumenty/Projects
else
	case $1 in
		clion) cd /home/hyperion/Dokumenty/Projects/CLionProjects
		;;
		idea) cd /home/hyperion/Dokumenty/Projects/IdeaProjects
		;;
		pychar) cd /home/hyperion/Dokumenty/Projects/PycharmProjects
		;;		
		oracle) cd /home/hyperion/Dokumenty/Projects/AdvancedDB
		;;
		*)
			echo "wrong option"
	esac

fi
