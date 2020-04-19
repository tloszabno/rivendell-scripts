#!/bin/bash

DROPBOX_PATH=~/Dropbox
EXTERNAL_MOUNT_POINT=/media/Stockpile
HOME_ALIAS=Stockpile



cd ~
rm -rf Muzyka Dokumenty Wideo Zdjecia Obrazy



cd ~
ln -s $EXTERNAL_MOUNT_POINT $HOME_ALIAS

ln -s $EXTERNAL_MOUNT_POINT/Downloads ~/Downloads/Big
ln -s $EXTERNAL_MOUNT_POINT/Muzyka ~/Music
ln -s $EXTERNAL_MOUNT_POINT/Zdjecia ~/Photos
ln -s $EXTERNAL_MOUNT_POINT/Movies ~/Wideo

mkdir ~/Obrazy
cd ~/Obrazy
mkdir Ikony Skany Tapety Zrzuty
ln -s $EXTERNAL_MOUNT_POINT/Zdjecia Zdjecia
cd ..


mkdir ~/workspace
cd ~/workspace
ln -s $EXTERNAL_MOUNT_POINT/Workspaces ~/Other

ln -s $EXTERNAL_MOUNT_POINT/Wirtualki ~/Wirtualki


cd ~
mkdir Programy


cd ~
ln -s $DROPBOX_PATH/Dokumenty Dokumenty

cd ~
mkdir tmp
