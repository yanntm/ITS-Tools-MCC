#! /bin/bash

set -x
set -e

./install_eclipse.sh

./install_greatspn.sh

# z3 4.5 
./install_z3.sh

# ./install_inputs.sh
# wget --progress=dot:mega https://yanntm.github.io/pnmcc-models-2020/oracle.tar.gz
# tar xzf oracle.tar.gz

# yices page down Jun 18 : don't break builds we use z3
# ./install_yices.sh

# now using embedded version of LTSmin
# ./install_ltsmin.sh

wget --progress=dot:mega https://yanntm.github.io/Spot-BinaryBuilds/ltlfilt
chmod a+x ltlfilt

wget --progress=dot:mega https://yanntm.github.io/Spot-BinaryBuilds/ltl2tgba
chmod a+x ltl2tgba

wget --progress=dot:mega https://yanntm.github.io/Spot-BinaryBuilds/autfilt
chmod a+x autfilt

