#!/bin/bash

ps ax | grep -i ssh
echo 'I am going to kill some SSH processes now!'
killall -9 ssh
ps ax | grep -i ssh
if [ $? -eq 0 ]; then
	echo "Well crap! That didn't work."
	/usr/bin/killall -9 ssh
	ps ax | grep -i ssh 
	if [ $? -eq 0 ]; then
		echo "SAD FACE I CANT KILL STUFF :("
	else
		echo "The joke's on you. I can kill stuff!"
	fi
fi
