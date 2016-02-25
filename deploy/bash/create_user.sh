#!/bin/bash  
ret=true
getent passwd $1 >/dev/null 2>&1 && ret=false

if $ret; then
    sudo groupadd -f $1
    sudo useradd -b /home/ -m -g $1 -G www-data $1
    	
else
    echo "User $1 exists"
fi
