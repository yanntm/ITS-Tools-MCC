#! /bin/bash

set -x
set -e

./install_itstools.sh

./install_greatspn.sh

# z3  now using embedded version 
# ./install_z3.sh

# ./install_inputs.sh
# wget --progress=dot:mega https://yanntm.github.io/pnmcc-models-2020/oracle.tar.gz
# tar xzf oracle.tar.gz

# yices page down Jun 18 : don't break builds we use z3
# ./install_yices.sh

# now using embedded version of LTSmin
# ./install_ltsmin.sh

# now using embedded spot
# ./install_spot.sh

mkdir -p bin/
