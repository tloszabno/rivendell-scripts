#!/bin/bash


add-apt-repository ppa:noobslab/macbuntu -y
add-apt-repository ppa:nilarimogard/webupd8 -y
add-apt-repository ppa:ravefinity-project/ppa -y
add-apt-repository ppa:xubuntu-dev/extras -y


apt-get update
apt-get upgrade -y
apt-get dist-upgrade

apt-get install build-essentials gcc make vim nano mc vim-gtk -y
apt-get install vlc terminator gedit gnome-terminal nemo nemo-gtkhash -y

apt-get install zsh curl wget git fish
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir tmp && cd tmp && wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/skippy-xd/skippy-xd_0.5-1_amd64.deb && dpkg -i skippy-xd_0.5-1_amd64.deb

#apt-get install slingscold albert xfdashboard xfdashboard-plugins -y
#apt-get install vibrancy-colors -y
#apt-get install ambiance-flat-colors -y
#apt-get install macbuntu-os-ithemes-lts-v7  macbuntu-os-icons-lts-v7 -y


echo "TODO, to install/check:"
echo "-oblogout"
echo "-virtualbox"
