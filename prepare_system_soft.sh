#!/bin/bash




sudo add-apt-repository ppa:webupd8team/atom -y
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"



sudo apt update 
sudo apt full-upgrade -y

sudo apt install vim vim-gtk build-essentials autotools mc fish -y
sudo apt install atom x2goclient doublecmd-gtk banshee -y
sudo apt install guake terminator -y
sudo apt install openjdk-8-jre openjdk-8-jdk -y
sudo apt install dropbox keepassx -y
sudo apt install git gitk meld -y
sudo apt install arc-theme -y --allow-unauthenticated



echo "Concider to install:"
echo "alber"
echo "chrome"
echo "wine/playonlinux"
echo "maven"
echo "eclipse"