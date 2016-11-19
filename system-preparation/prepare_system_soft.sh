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

sudo apt install unity-tweak-tool vim vim-gtk build-essential autotools-dev mc fish p7zip-full atom x2goclient doublecmd-gtk banshee \
 guake terminator openjdk-8-jre openjdk-8-jdk  keepassx git gitk meld arc-theme netext73 vlc nautilus-dropbox caffeine \
 libdvd-pkg network-manager-openvpn network-manager-openvpn-gnome albert python-pip -y

echo "Concider to install:"
echo "chrome"
echo "wine/playonlinux"
echo "maven"
echo "eclipse"
