#! /bin/bash

set -x
set -e


if [ ! -f z3.zip ] ; then
	# using z3 4.12.1, available on GitHub   
	# export DLURL=https://github.com/Z3Prover/z3/releases/download/z3-4.12.1/z3-4.12.1-x64-glibc-2.35.zip
	
	# use this release for older systems that don't have recent glibc
	export DLURL=https://github.com/Z3Prover/z3/releases/download/z3-4.11.2/z3-4.11.2-x64-glibc-2.31.zip	
	wget --progress=dot:mega $DLURL -O z3.zip
fi

if [ ! -d z3 ] ; then 
    unzip z3.zip
    mv z3*/ z3dl/ 
    mkdir z3
    mkdir z3/bin
    cp z3dl/bin/z3* z3/bin/
    rm -rf z3dl/
fi


