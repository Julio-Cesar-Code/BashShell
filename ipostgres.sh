#!/bin/bash
#This code install, uninstall, and using backups


echo "Welcome to postgres basic manager"

install(){

	echo "Installing"

	sudo apt update
	apt install postgresql postgresql-contrib

}
uninstall(){

	echo "Uninstallling"


}



display_menu(){
	echo "Menu"
	echo "1. Install"
	echo "2. Uninstall"
	echo "3. exit"
	echo -n "Enter your choice:"
	read choice
	

	case $choice in 
		1) 
			install
			;;
		2)
			uninstall
			;;
		3)
			echo "Exiting"
			exit
			;;
		*)
			echo "Invalid choice"
			;;
	esac




}

# Main program loop 
while true; do
	display_menu
done
