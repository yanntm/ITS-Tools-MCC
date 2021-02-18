#! /bin/bash

set -x

if [ ! -f greatspn/bin/RGMEDD2 ] ; then 
	mkdir greatspn
	cd greatspn
	wget --progress=dot:mega https://lip6.github.io/GreatSPN-BinaryBuild/greatspn_linux.tar.gz
	tar xzf greatspn_linux.tar.gz
	rm greatspn_linux.tar.gz
	cd ..
fi


