#! /bin/bash

set -x

if [ ! -f itstools/its-tools ] ; then 
	mkdir itstools
	cd itstools
	wget --progress=dot:mega https://lip6.github.io/ITSTools/fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	unzip fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	rm fr.lip6.move.gal.itscl.product-linux.gtk.x86_64.zip
	# the native image of the same product (GraalVM), preferred by runeclipse.sh when present;
	# it needs only plugins/ beside it, for the binaries
	wget --progress=dot:mega https://lip6.github.io/ITSTools/its-tools-native && chmod +x its-tools-native || rm -f its-tools-native
	# run once to cache the osgi configuration (the Eclipse launcher, the fallback)
	./its-tools
	cd ..
fi


