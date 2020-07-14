#!/bin/bash

if [ "`lsblk -o name | grep sdb1`" ]
then   
	ffplay son.mp3
        echo "USB detected"
	mkdir usb
	cd usb
	sudo mount /dev/sdb1 usb
	echo "Usb monter"
	sleep 3
	touch date.txt
	date -u >> date.txt
	echo "date.txt est cree"

fi

if sudo -f umount /dev/sdb1
then
	echo"demonter avec succes"
	ffplay son.mp3


else
        echo "Aucun usb"

fi


