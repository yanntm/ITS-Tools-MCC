#! /bin/sh

# install as root
apt-get update

# packages for ITS-tools  
apt-get -y install python3 unzip openjdk-21-jdk psmisc gcc libpopt-dev libltdl-dev

# spot python library
# couldn't get this to work unfortunately.
#apt-get -y install gnupg2
#wget -q -O - https://www.lrde.epita.fr/repo/debian.gpg | apt-key add -
#echo 'deb http://www.lrde.epita.fr/repo/debian/ stable/' >> /etc/apt/sources.list
#apt-get update
#apt-get -y install python3-spot 


