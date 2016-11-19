#!/bin/bash




sudo add-apt-repository ppa:webupd8team/atom -y
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
rm Release.key
sudo add-apt-repository ppa:netext/netext73
sudo add-apt-repository ppa:nilarimogard/webupd8


sudo apt update 
sudo apt full-upgrade -y

sudo apt install unity-tweak-tool -y
sudo apt install vim vim-gtk build-essential autotools-dev mc fish p7zip-full -y
sudo apt install atom x2goclient doublecmd-gtk banshee -y
sudo apt install guake terminator -y
sudo apt install openjdk-8-jre openjdk-8-jdk -y
sudo apt install keepassx -y
sudo apt install git gitk meld -y
sudo apt install arc-theme -y --allow-unauthenticated


sudo apt install netext73-y 
sudo apt install vlc -y 
sudo apt install nautilus-dropbox -y
sudo apt install caffeine -y
sudo apt install libdvd-pkg -y
sudo apt install network-manager-openvpn network-manager-openvpn-gnome -y
sudo apt install albert -y

echo "Concider to install:"
echo "alber"
echo "chrome"
echo "wine/playonlinux"
echo "maven"
echo "eclipse"
