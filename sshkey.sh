#!/bin/bash
if [ -z $(which xclip) ]; 
then
	
	if [[ $(uname -a) == *"fedora"* ]];
	then
		sudo dnf install xclip
	else
		sudo apt-get install xclip
	fi
fi

ssh-keygen -t rsa -b 4096 -C "youremail@email.com"
ssh-add /root/.ssh/id_rsa
cd .ssh
xclip -sel clip < id_rsa.pub
git config --global user.email "youremail@email.com"

