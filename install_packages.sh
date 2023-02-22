#! /bin/sh

# install as root
apt-get update

# packages for ITS-tools  
apt-get install python3 unzip openjdk-17-jdk psmisc gcc libpopt-dev gnupg2

# spot python library
wget -q -O - https://www.lrde.epita.fr/repo/debian.gpg | apt-key add -
echo 'deb http://www.lrde.epita.fr/repo/debian/ stable/' >> /etc/apt/sources.list
apt-get update
apt-get install python3-spot 


