#!/bin/bash
EMAIL='' # Add your email here if you wish to use this script frequently.
if [ "$EMAIL" = "" ] && [ "$1" = "" ]; then
    echo "Usage: $0 <youremail@email.com>"
    exit 1
fi
EMAIL="$1"

if [ -z $(which xclip) ];
then

	if [[ $(uname -a) == *"fedora"* ]];
	then
		sudo dnf install xclip
	else
		sudo apt-get install xclip
	fi
fi

ssh-keygen -t rsa -b 4096 -C "$EMAIL"
ssh-add /root/.ssh/id_rsa
cd ${HOME}/.ssh
xclip -sel clip < id_rsa.pub
git config --global user.email "$EMAIL"

