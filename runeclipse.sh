#! /bin/bash

set -x

ulimit -s 65536

# configure LTSmin to use a maximum of XGB of memory, this is neccessary
# because sysconf does not work in docker
# cg_ does not work on cluster with OAR but not cg_memory set
# cannot bound LTSmin memory if in portfolio with other methods...
# Basically guessing available memory and trying to take it all is a FBI
# "Fausse Bonne Idee",
# e.g. it will never support two LTSmin running different problems in parallel.
# 4 << 30 = 4294967296  4GB
# 8 << 30 = 8589934592  8GB
# 16 << 30 = 17179869184  16GB
if [[ -z "${LTSMIN_MEM_SIZE}" ]]; then
    export LTSMIN_MEM_SIZE=8589934592    
fi


VERSION=$(ls $BINDIR/itstools/plugins/fr.lip6.move.gal.application.pnmcc_* | sed s/.jar// | perl -pe 's/.*\.//g')
echo "Running Version $VERSION"
$BINDIR/itstools/its-tools  -data @none  -pnfolder $1 -examination $2 -spotpath $BINDIR/ltlfilt -z3path $BINDIR/z3/bin/z3 -yices2path $BINDIR/yices/bin/yices ${@:3} -vmargs -Dosgi.locking=none -Declipse.stateSaveDelayInterval=-1 -Dosgi.configuration.area=@none -Xss128m -Xms40m -Xmx8192m

