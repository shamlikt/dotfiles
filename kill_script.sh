#!/bin/bash
echo "Process List "
echo "----------------"
ps -e | grep $1 | cut -d ' ' -f 12
read -p "Do you wish to kill ?" yn
echo $yn
case $yn in
    [y]*)kill -9 $(ps -e | grep $1 | cut -d ' ' -f 2);;
    *) exit;;
    
esac
