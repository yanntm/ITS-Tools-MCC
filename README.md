# ITS-Tools packaged for the Model-Checking Contest

 This project contains :
* support for downloading and deploying ITS-tools. Simply run : `./install.sh`
* wrapper scripts used in the contest, in particular `BenchKit_head.sh` that supports invocation of its-tools from the command line for PNMCC style queries


## Model Checking Contest Awards

### In 2023

ITS-Tools and its family won the following awards at the [Model-Checking Contest 2023 edition](https://mcc.lip6.fr/2023) :

 * Reachability, LTL, UpperBounds, GlobalProperties gold :  <img src="http://mcc.lip6.fr/certificates/2023/gold-Reachability-2023.png" alt="Gold Reachability" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2023/gold-LTL-2023.png" alt="Gold LTL" width="50px" height="50px"> <img src="http://mcc.lip6.fr/certificates/2023/gold-UpperBounds-2023.png" alt="Gold Upper bounds" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2023/gold-GlobalProperties-2023.png" alt="Gold Global Properties" width="50px" height="50px">
 * CTL silver : <img src="http://mcc.lip6.fr/certificates/2023/silver-CTL-2023.png" alt="silver CTL" width="50px" height="50px"> 
  * StateSpace bronze :  <img src="http://mcc.lip6.fr/certificates/2023/bronze-StateSpace-2023.png" alt="Bronze StateSpace" width="50px" height="50px">

ITS-Tools thus *won* four out of six categories of the MCC 2023, including LTL for the first time, and was on the podium of the other categories CTL and StateSpace.

These good overall results are also due to our submission of several combination tools "+red" with ITS-Tools acting as a simplifying front-end for another engine. 
While only one of these tools was competing for medals in a given category, they performed very well overall. 
Please see the https://github.com/yanntm/MCC-drivers repository that hosts these variants.

We are also building a nice analysis site for the MCC data, that can be browsed from here : [https://github.com/yanntm/MCC-analysis](https://yanntm.github.io/MCC-analysis/index.html)
(or have a look at the related repository https://github.com/yanntm/MCC-analysis).

### In 2022

This tool  won the following awards at the [Model-Checking Contest 2022 edition](https://mcc.lip6.fr/2022/) :

 * UpperBounds, GlobalProperties gold :  <img src="http://mcc.lip6.fr/certificates/2022/gold-UpperBounds-2022.png" alt="Gold Upper bounds" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2022/gold-GlobalProperties-2022.png" alt="Gold Global Properties" width="50px" height="50px"> 
 * Reachability, CTL, LTL silver : <img src="http://mcc.lip6.fr/certificates/2022/silver-Reachability-2022.png" alt="Silver Reachability" width="50px" height="50px"> <img src="http://mcc.lip6.fr/certificates/2022/silver-CTL-2022.png" alt="silver CTL" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2022/silver-LTL-2022.png" alt="silver LTL" width="50px" height="50px">
  * StateSpace bronze :  <img src="http://mcc.lip6.fr/certificates/2022/bronze-StateSpace-2022.png" alt="Bronze StateSpace" width="50px" height="50px">

It can be noted that although ITS-Tools went from Gold Reachability in 2021 to Silver in 2022, this was in fact due to a run error from the contest organizers. This is  visible if you search DNC in [this page](https://mcc.lip6.fr/index.php?CONTENT=results/ReachabilityCardinality.html&TITLE=Results%20for%20ReachabilityCardinality) or [here](https://mcc.lip6.fr/index.php?CONTENT=results/ReachabilityFireability.html&TITLE=Results%20for%20ReachabilityFireability). These DNC answers from ITS-Tools are all bugs in the MCC managed experiment, not bugs in ITS-Tools. 

Since this was not diagnosed before the contest results were announced, the 2022 "Reachability" results stand with ITS-Tools in Silver and [Tapaal](https://www.tapaal.net/) in Gold. But Gold2021 (i.e. ITS-Tools from 2021) did get the best score on Reachability in 2022 (in front of Tapaal), and we know that ITS-Tools 2022 was improved with respect to 2021 so we are confident that in 2023 we will reclaim the Gold in reachability.

### In 2021


This tool  won the following awards at the [Model-Checking Contest 2021 edition](https://mcc.lip6.fr/2021/) :

 * Reachability, UpperBounds, GlobalProperties gold :  <img src="http://mcc.lip6.fr/certificates/2021/gold-Reachability-2021.png" alt="Gold Reachability" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2021/gold-UpperBounds-2021.png" alt="Gold Upper bounds" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2021/gold-GlobalProperties-2021.png" alt="Gold Global Properties" width="50px" height="50px"> 
 * CTL, LTL silver :  <img src="http://mcc.lip6.fr/certificates/2021/silver-CTL-2021.png" alt="silver CTL" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2021/silver-LTL-2021.png" alt="silver LTL" width="50px" height="50px">
  * StateSpace bronze :  <img src="http://mcc.lip6.fr/certificates/2021/bronze-StateSpace-2021.png" alt="Bronze StateSpace" width="50px" height="50px">

It thus was on the podium of *all* categories of the contest, and outright won half of them.

### In 2020

This tool  won the following awards at the [Model-Checking Contest 2020 edition](https://mcc.lip6.fr/2020/) :

 * Reachability gold : <img src="http://mcc.lip6.fr/certificates/2020/gold-Reachability-2020.png" alt="Gold Reachability" width="50px" height="50px">
 * CTL, LTL, StateSpace bronze :  <img src="http://mcc.lip6.fr/certificates/2020/bronze-CTL-2020.png" alt="Bronze CTL" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2020/bronze-LTL-2020.png" alt="Bronze LTL" width="50px" height="50px">  <img src="http://mcc.lip6.fr/certificates/2020/bronze-StateSpace-2020.png" alt="Bronze StateSpace" width="50px" height="50px">

It also got the second place (silver ?) in the [Deadlock Detection](https://mcc.lip6.fr/2020/index.php?CONTENT=results/ReachabilityDeadlock.html&TITLE=Results%20for%20ReachabilityDeadlock) category, though in 2020 this category was merged into "GlobalProperties" (for the first time) so there is no related medal.

In pure symbolic and structural reduction mode it also participated in conjunction with Lola, as the tool ITS-Lola and won several awards. 
ITS-lola project lives here https://github.com/yanntm/its-lola.

### Previous years

The tool gathered many medals in the MCC and has been participating since the first edition. 
The 2020 submission is however a major landmark with new strategies described in the paper "Structural Reductions Revisited" published at PetriNets 2020.

See the contest pages for more details on the awards won for previous years.

## Dependencies

The install.sh deploys :
* ITS-tools command line latest version for Linux, taken from it's main repository https://github.com/lip6/ITSTools 
* Microsoft Z3 binaries for linux, used as our SMT solution engine, taken from their repository https://github.com/Z3Prover/z3
* LTSmin model checker, this tool is embedded in the ITSTools distribution and built here https://github.com/yanntm/LTSmin-BinaryBuilds
* Spot's executable binaries ltlfilt, ltl2tgba, autfilt to manipulate LTL properties and automata, taken from our https://github.com/yanntm/Spot-BinaryBuilds repository
* GreatSPN model checker, currently only used to compute variable orderings, taken from our repository https://github.com/lip6/GreatSPN-BinaryBuild

## Usage

As this tool conforms to the Model-Checking contest rules, please see the [MCC instructions](https://mcc.lip6.fr/pdf/MCC2020-SubmissionManual.pdf) to see how these `BenchKit_head.sh` scripts are meant to be invoked, and what is expected outputs from the tool in terms of verdict reporting.

To install, simply clone this repository and run `install.sh` script. This build is Linux specific as these are the conditions in the contest.

To analyze a model you need : a `model.pnml` Petri net and an `Examination.xml` property file in the current working directory.

Then define the environment variables `BK EXAMINATION` (to one of `ReachabilityDeadlock,UpperBounds,ReachabilityCardinality,ReachabilityFireability,LTLFireability,LTLCardinality,CTLFireability,CTLCardinality`) and `BK TIME CONFINEMENT` (in seconds).

If you are not running in the default MCC path `/home/mcc/BenchKit`, also define `BK_BIN_PATH` to the installation folder where you ran `./install.sh`.

Finally invoke `BenchKit_head.sh` script.

For instance, after changing directory to where a `model.pnml` and `Examination.xml` files are present,

```
export BK_EXAMINATION=StateSpace ; export BK_BIN_PATH=/home/ythierry/git/ITS-Tools-MCC/bin/ ; export BK_TIME_CONFINEMENT=300; export BK_INPUT=$PWD ; $BK_BIN_PATH/../BenchKit_head.sh
```


# Testing

This tool being compliant to MCC can be tested using our MCC testing framework https://github.com/yanntm/pnmcc-tests :

Set it up like this :
```
git clone https://github.com/yanntm/ITS-Tools-MCC.git
cd ITS-Tools-MCC
./install.sh
git clone https://github.com/yanntm/pnmcc-tests.git
cp -r pnmcc-tests/* .
./install_oracle.sh
```

Then for any test in `oracle/` you can run :
```
./run_test.pl oracle/Angiogenesis-PT-05-LTLF.out
``` 

To ensure the build is reproducible there is a Github Actions attached to this repository that runs this exact test, see https://github.com/yanntm/ITS-Tools-MCC/actions for some logs of it running.

# Additional Flags

You can pass extra flags when invoking BenchKit_head.sh that will affect the behavior of the tool. 

* -rebuildPNML : at the end of the reduction phase, output a reduced model and property.

Depending on the examination lots of different things happen. 

You can modify the flags that are presently passed to `runeclipse.sh` in the `BenchKit_head.sh` script :

Solution engines :
* -its responds to all examination, and uses hierarchical set decision diagrams as solution engine 
* -smt only supports ReachabilityXX, and uses a BMC/Induction approach reliant on Z3 
* -ltsmin supports Reachability and LTL and uses LTSmin  https://ltsmin.utwente.nl/ as solution engine

Additional flags :
* -greatspnpath $BINDIR/greatspn/ -order META : these flags make the -its engine use the variable ordering suggested by GreatSPN's heuristics. See https://github.com/greatspn/SOURCES for more values of the -order flags you could use.
* -manyOrder divide the available time in slices to try several different variable orderings

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

### Acknowledgements
 
Packaging and development by Yann Thierry-Mieg, working at LIP6, Sorbonne Université, CNRS.
This project source code is released under the terms of [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).
