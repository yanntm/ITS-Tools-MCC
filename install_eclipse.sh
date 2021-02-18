#! /bin/bash

set -x

if [ ! -f itstools/its-tools ] ; then 
	mkdir itstools
	cd itstools
	wget --progress=dot:mega https://yanntm.github.io/ITS-commandline/fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	unzip fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	rm fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	cd ..
fi


