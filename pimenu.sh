#!/bin/bash
key=$(echo "$*" | awk 'NF>1{print $NF}')
case $key in
    Music)
	echo "Music $key" >> /home/pi/pimenu.log
    ;;
    Video)
	echo "Video $key" >> /home/pi/pimenu.log
    ;;
    Video1)
	echo "Video1 $key" >> /home/pi/pimenu.log
    ;;
    '')
	echo "Empty $key" >> /home/pi/pimenu.log
        ps aux | grep -ie pimenu | awk '{print $2}' | xargs kill -9
    ;;
esac
sleep 3
