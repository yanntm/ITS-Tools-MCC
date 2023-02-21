#! /bin/bash

set -x
set -e


if [ ! -f z3.zip ] ; then
	# using z3 4.12.1, available on GitHub   
	export DLURL=https://github.com/Z3Prover/z3/releases/download/z3-4.12.1/z3-4.12.1-x64-glibc-2.35.zip	
	wget --progress=dot:mega $DLURL
	mv z3-4.12.1-x64-glibc-2.35.zip	z3.zip
fi

if [ ! -d z3 ] ; then 
    unzip z3.zip
    mv z3*/ z3dl/ 
    mkdir z3
    mkdir z3/bin
    cp z3dl/bin/z3* z3/bin/
    rm -rf z3dl/
fi


