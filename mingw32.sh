#!/bin/bash
echo "This scripts were created by Khit Minnyo for Kali Linux, Ubuntu Linux and other Debians linux systems."
echo "At first, This program will add Debian's Repository to your sources."
echo "And then, it will install mingw32 according to your system."
#Check system
uname -a 
dpkg --print-architecture 

if [[ $(dpkg --print-architecture) == *"amd64"* ]]; 
then
  echo "Your system is <amd64> 64bit Operating system."
else
  echo "Your system is <i386> 32bit Operating system."
fi
echo "Now, the progress of adding sources. Don't worry, it is secure."
#for Debian sources
echo "deb http://ftp.de.debian.org/debian jessie main" >> /etc/apt/sources.list
#Updating
echo "Now, updating "
apt update
echo "Now, the progress of installing mingw32 into your system."
apt install mingw32 -y
echo "Now, the progress of installing mingw32's dependencies into your system."
apt install mingw* -y
#creator
echo "Scripts Created By: "
echo "          __  ___     _ _    ___  __ _                         "
echo "          | |/ / |__ (_) |_  |  \/  (_)_ __  _ __  _   _  ___  "
echo "          | ' /| '_ \| | __| | |\/| | | '_ \| '_ \| | | |/ _ \ "
echo "          | . \| | | | | |_  | |  | | | | | | | | | |_| | (_) |"
echo "          |_|\_\_| |_|_|\__| |_|  |_|_|_| |_|_| |_|\__, |\___/ "
echo "                                                   |___/ "
echo "®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®®"
echo "Please, comment deb debian source in your sources.list using #"
echo "You can open your source file with one of the following command"
echo '"gedit /etc/apt/sources.list" or "leafpad /etp/apt/sources.list" or "nano /etc/apt/sources.list" '
