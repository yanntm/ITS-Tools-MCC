#! /bin/bash

set -x
set -e

if [ ! -f ltlfilt ] ; then 
	wget --progress=dot:mega https://yanntm.github.io/Spot-BinaryBuilds/ltlfilt
	chmod a+x ltlfilt
fi

if [ ! -f ltl2tgba ] ; then 
	wget --progress=dot:mega https://yanntm.github.io/Spot-BinaryBuilds/ltl2tgba
	chmod a+x ltl2tgba
fi

if [ ! -f autfilt ] ; then 
	wget --progress=dot:mega https://yanntm.github.io/Spot-BinaryBuilds/autfilt
	chmod a+x autfilt
fi

