This project contains :
* support for download and install from command-line of ITS-tools run : ./install_all.sh
* support for invocation of its-tools from the command line for PNMCC style queries

We are building support for more command line flags.

You can use ./runeclipse with flags :

* -pnfolder $(pwd)/INPUTS/AutoFlight-PT-01a  : (MANDATORY) Working folder containing model.pnml and examination.xml. 
NB : runatest.sh can decompress the appropriate folder, it just takes the model name as input, provided you ran install_inputs.sh.

* -examination ReachabilityCardinality : Examination name in PNMCC standard format

Depending on the examination lots of different things happen. 
-its responds to all examination, -smt only supports ReachabilityXX, -ltsmin only supports Reachability and LTL... 

MANDATORY (unless you only use -its), but already set by default, just make sure to run script ./install_z3.sh)

* -z3path $(pwd)/z3/bin/z3  : Path to z3 4.3 or better

Solution engines, activate as many as you wish, they run in portfolio : -its -smt -ltsmin -onlyGal

* -its : Generates examination.gal and examination.prop/ctl/ltl, then calls ITS-tools + interprets results.

* -smt : Generate a pair of SMT solvers running BMC/KInduction for ReachabilityXXX properties.

* -ltsmin 
Generate model.c/.h + compilation to gal.so + run ltsmin + interpret results

For finer control :

* -disablePOR
Partial Order Reduction is only available with ltsmin target. 
But computing the POR matrices can be costly, so this flag disables that.
In combination with onlyGAL quickly maps pnml to .c/.h (+ gal.so if -ltsmin is set).
In combination with -ltsmin, disables computation of NES/NDS/COENABLED/DNA matrices and removes flags that activate POR from ltsmin invocations.

Mostly for debug, and for further reuse of the GAL target : 
* -onlyGal
Builds Examination.gal/Examination.prop (like -its but without running its-reach).
Builds model.c/model.h (like -ltsmin) but does not run ltsmin.
If ltsmin is set, also generates gal.so (we can't compile without ltsmin headers) but still does not run ltsmin.

More options are under development to leverage other existing transformations to GAL, please ask <mailto:yann.thierry-mieg@lip6.fr> if you
 need a command-line tool that processes some of the other languages we support with ITS-tools (e.g. Uppaaal xta, Tina tpn, Divine DVE, Spin promela...).
 
Packaging and development by Yann Thierry-Mieg, working at LIP6, Sorbonne Université, CNRS.
This project source code is released under the terms of [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).
