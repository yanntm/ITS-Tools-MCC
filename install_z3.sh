#! /bin/bash

set -x
set -e

if [ ! -f z3/bin/z3 ] ; then 
	wget --progress=dot:mega https://yanntm.github.io/ITS-Tools-Dependencies/z3.tgz
	tar xzf z3.tgz
	rm z3.tgz
fi

