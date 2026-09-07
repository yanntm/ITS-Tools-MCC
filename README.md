# ITS-Tools packaged for the Model-Checking Contest

[![CI](https://github.com/yanntm/ITS-Tools-MCC/actions/workflows/ci.yml/badge.svg)](https://github.com/yanntm/ITS-Tools-MCC/actions/workflows/ci.yml)

This project packages [ITS-Tools](https://github.com/lip6/ITSTools) for the
[Model-Checking Contest](https://mcc.lip6.fr/) (MCC). It contains :

* support for downloading and deploying ITS-Tools and its dependencies. Simply run `./install.sh`
* the wrapper scripts used in the contest, in particular `BenchKit_head.sh` that supports
  invocation of ITS-Tools from the command line for PNMCC style queries

Requires a JDK 21 or newer, and a Linux x86-64 host (the contest conditions).

## Results at the Model-Checking Contest

ITS-Tools has been on the podium of **every one of the six MCC categories, every year since 2021**:
15 gold, 18 silver and 3 bronze medals over the six editions 2021-2026.

Each cell below gives the medal and how it was earned, in percentage of the official MCC score:
for a gold, the margin **over the silver medalist**; otherwise the gap **behind the gold medalist**.

| Year | StateSpace | GlobalProperties | UpperBounds | Reachability | CTL | LTL |
|------|------------|------------------|-------------|--------------|-----|-----|
| [2026](https://mcc.lip6.fr/2026/results.php) | 🥈 -18.4% | 🥇 +15.7% | 🥇 +3.8% | 🥈 -1.6% | 🥈 -11.8% | 🥈 -0.7% |
| [2025](https://mcc.lip6.fr/2025/results.php) | 🥈 -20.2% | 🥇 +20.2% | 🥇 +4.3% | 🥈 -1.2% | 🥈 -19.7% | 🥈 -1.2% |
| [2024](https://mcc.lip6.fr/2024/results.php) | 🥈 -9.9% <sup>a</sup> | 🥇 +11.6% <sup>a</sup> | 🥇 +2.1% | 🥈 -0.7% <sup>a</sup> | 🥈 -21.7% | 🥈 -4.4% <sup>b</sup> |
| [2023](https://mcc.lip6.fr/2023/results.php) | 🥉 -23.4% | 🥇 +22.4% | 🥇 +10.0% | 🥇 +0.5% <sup>c</sup> | 🥈 -7.9% <sup>c</sup> | 🥇 +1.2% |
| [2022](https://mcc.lip6.fr/2022/results.php) | 🥉 -32.3% | 🥇 +14.0% | 🥇 +7.8% | 🥈 -1.5% | 🥈 -23.3% | 🥈 -1.5% |
| [2021](https://mcc.lip6.fr/2021/results.php) | 🥉 -24.8% | 🥇 +6.9% | 🥇 +6.7% | 🥇 +2.4% | 🥈 -30.0% | 🥈 -2.3% |

<sup>a</sup> medal collected by `GreatSPN+red`, <sup>b</sup> by `LTSMin+red`, <sup>c</sup> by `LoLA+red`:
combination tools where ITS-Tools acts as a simplifying front-end for another solution engine.
The MCC awards at most one medal per team and per category, so in those cases ITS-Tools itself
scored just below the podium. These variants live in the
[MCC-drivers](https://github.com/yanntm/MCC-drivers) repository.

In 2026 ITS-Tools additionally took the two new MCC awards in both categories it won: the
**Blue Whale** award (most correct values computed) and the **James Cook** award (most *unique*
correct results, that no other tool could produce). It competed in all 13 examinations, with a
confidence rate of 99.998%.

For the details, see the [official MCC results](https://mcc.lip6.fr/) for each year and our
analysis site [MCC-analysis](https://yanntm.github.io/MCC-analysis/index.html)
(sources: [yanntm/MCC-analysis](https://github.com/yanntm/MCC-analysis)).
The year-by-year commentary, including the 2020 and earlier editions, has moved to
[HISTORY.md](HISTORY.md).

## Install

```sh
git clone https://github.com/yanntm/ITS-Tools-MCC.git
cd ITS-Tools-MCC
./install.sh
```

This build is Linux specific, as these are the conditions in the contest. On a bare machine
(e.g. the contest VM) run `sudo ./install_packages.sh` first, it installs the system packages
ITS-Tools needs: `python3 unzip openjdk-21-jdk psmisc gcc libpopt-dev libltdl-dev`.

`install.sh` deploys :
* **ITS-Tools** command line, latest version for Linux, from its main repository
  <https://github.com/lip6/ITSTools>
* **GreatSPN**, currently only used to compute variable orderings, from our repository
  <https://github.com/lip6/GreatSPN-BinaryBuild>

The following are embedded in the ITS-Tools distribution and no longer deployed separately, but
are built here :
* **Microsoft Z3**, used as our SMT solution engine, from <https://github.com/Z3Prover/z3>
* **LTSmin** model checker, built at <https://github.com/yanntm/LTSmin-BinaryBuilds>
* **Spot**'s executables `ltlfilt`, `ltl2tgba`, `autfilt` to manipulate LTL properties and
  automata, from <https://github.com/yanntm/Spot-BinaryBuilds>

## Usage

As this tool conforms to the Model-Checking Contest rules, please see the
[MCC submission manual](https://mcc.lip6.fr/pdf/MCC2020-SubmissionManual.pdf) for how these
`BenchKit_head.sh` scripts are meant to be invoked, and what output is expected from the tool in
terms of verdict reporting.

To analyze a model you need a `model.pnml` Petri net and an `Examination.xml` property file in the
current working directory. Then define :

* `BK_EXAMINATION` : one of `StateSpace`, `UpperBounds`, `ReachabilityDeadlock`, `OneSafe`,
  `StableMarking`, `QuasiLiveness`, `Liveness`, `ReachabilityCardinality`,
  `ReachabilityFireability`, `CTLCardinality`, `CTLFireability`, `LTLCardinality`, `LTLFireability`
* `BK_TIME_CONFINEMENT` : the time limit, in seconds
* `BK_BIN_PATH` : the installation folder where you ran `./install.sh`, if you are not running in
  the default MCC path `/home/mcc/BenchKit`

Finally invoke the `BenchKit_head.sh` script. For instance, from a directory holding a
`model.pnml` and an `Examination.xml` :

```sh
export BK_EXAMINATION=StateSpace
export BK_BIN_PATH=/home/ythierry/git/ITS-Tools-MCC/bin/
export BK_TIME_CONFINEMENT=300
export BK_INPUT=$PWD
$BK_BIN_PATH/../BenchKit_head.sh
```

The examinations this package supports are listed in [SupportedExamination.txt](SupportedExamination.txt),
for both P/T and colored nets.

## Testing

This tool being MCC compliant, it can be tested with our MCC testing framework
[pnmcc-tests](https://github.com/yanntm/pnmcc-tests). Set it up like this :

```sh
git clone https://github.com/yanntm/ITS-Tools-MCC.git
cd ITS-Tools-MCC
./install.sh
git clone https://github.com/yanntm/pnmcc-tests.git
cp -r pnmcc-tests/* .
./install_oracle.sh
```

Then for any test in `oracle/` you can run :

```sh
./run_test.pl oracle/Angiogenesis-PT-05-LTLF.out
```

To ensure the build stays reproducible, the
[CI workflow](.github/workflows/ci.yml) of this repository runs exactly these tests on every push
and on a weekly schedule, so it also catches breakage in the upstream binaries it downloads.
See the [Actions tab](https://github.com/yanntm/ITS-Tools-MCC/actions) for the logs.

## Additional flags

You can pass extra flags when invoking `BenchKit_head.sh` that will affect the behavior of the
tool. Depending on the examination, lots of different things happen. You can modify the flags that
are presently passed to `runeclipse.sh` in the `BenchKit_head.sh` script.

### Solution engines

Activate as many as you wish, they run in portfolio.

* `-its` : responds to all examinations, and uses hierarchical set decision diagrams as solution
  engine. Generates `examination.gal` and `examination.prop`/`.ctl`/`.ltl`, then calls ITS-Tools
  and interprets the results.
* `-smt` : only supports `ReachabilityXX`, and uses a BMC/K-induction approach reliant on Z3.
* `-ltsmin` : supports Reachability and LTL, uses [LTSmin](https://ltsmin.utwente.nl/) as solution
  engine. Generates `model.c`/`model.h`, compiles them to `gal.so`, runs LTSmin and interprets the
  results.

### Variable orders

* `-greatspnpath $BINDIR/greatspn/ -order META` : make the `-its` engine use the variable ordering
  suggested by GreatSPN's heuristics. See <https://github.com/greatspn/SOURCES> for more values of
  the `-order` flag you could use.
* `-manyOrder` : divide the available time in slices to try several different variable orderings.

### Finer control

* `-rebuildPNML` : at the end of the reduction phase, output a reduced model and property.
* `-disablePOR` : partial order reduction is only available with the LTSmin target, but computing
  the POR matrices can be costly, so this flag disables that. In combination with `-onlyGal` it
  quickly maps PNML to `.c`/`.h` (plus `gal.so` if `-ltsmin` is set). In combination with
  `-ltsmin`, it disables computation of the NES/NDS/COENABLED/DNA matrices and removes the flags
  that activate POR from the LTSmin invocations.
* `-onlyGal` : mostly for debug, and for further reuse of the GAL target. Builds
  `Examination.gal`/`Examination.prop` (like `-its` but without running `its-reach`) and
  `model.c`/`model.h` (like `-ltsmin`), but runs neither. If `-ltsmin` is set it also generates
  `gal.so` (we can't compile without the LTSmin headers) but still does not run LTSmin.

More options are under development to leverage other existing transformations to GAL. Please ask
<yann.thierry-mieg@lip6.fr> if you need a command-line tool that processes some of the other
languages we support with ITS-Tools (e.g. Uppaal xta, Tina tpn, Divine DVE, Spin promela...).

## Acknowledgements

Packaging and development by Yann Thierry-Mieg, working at LIP6, Sorbonne Université, CNRS.
This project source code is released under the terms of
[GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).
