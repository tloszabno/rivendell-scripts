#!/bin/bash


BACKUP_PATH=/media/Stockpile/Backups/common


cd ~
cp -rL Dokumenty $BACKUP_PATH/
cp -r workspace $BACKUP_PATH/ #bez zewnętrzego
cp -rL Programy $BACKUP_PATH/
cp -rL Skrypty $BACKUP_PATH/
cp -r Obrazy $BACKUP_PATH/ #bez zdjeć !
