if [ -z "$1" ]; then
	sudo apt-get update
elif [ "$1" == now ]; then 
	sudo apt-get update && sudo apt-get upgrade
elif [ "$1" == all ]; then
	sudo apt-get update && sudo apt-get dist-upgrade
elif [ "$1" == shutdown ]; then
	sudo apt-get update && sudo apt-get upgrade && shutdown -h now
	
else 
	echo "wrong command"

fi
