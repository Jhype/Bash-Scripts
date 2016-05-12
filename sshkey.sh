#!/bin/bash
sudo apt-get install xclip
ssh-keygen -t rsa -b 4096 -C "youremail@email.com"
ssh-add /root/.ssh/id_rsa
cd .ssh
xclip -sel clip < id_rsa.pub
git config --global user.email "youremail@email.com"

