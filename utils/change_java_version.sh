#!/bin/bash

if [ "$#" -ne 1 ]
then
	echo "Put java version"
	exit
fi

sudo update-java-alternatives -s java-$1-oracle
