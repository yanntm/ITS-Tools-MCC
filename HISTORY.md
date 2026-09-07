# A history of ITS-Tools at the Model Checking Contest

This file collects the detailed, year-by-year commentary on the participation of ITS-Tools
in the [Model-Checking Contest](https://mcc.lip6.fr/) (MCC). The [README](README.md) carries
a condensed medal table for the recent editions; this is the long version, with the stories
behind the numbers.

For raw data, see the official [MCC results pages](https://mcc.lip6.fr/) for each year, and our
own analysis site [MCC-analysis](https://yanntm.github.io/MCC-analysis/index.html)
(sources: [yanntm/MCC-analysis](https://github.com/yanntm/MCC-analysis)).

## The "+red" combination tools

Since 2023 a large part of our results comes from *combination* tools, submitted under names
such as `LoLA+red`, `GreatSPN+red`, `LTSMin+red`, `Marcie+red` or `Smart+red`. In these, ITS-Tools
acts as a simplifying front-end (structural reductions, SMT-based simplification, rewriting)
for another verification engine that provides the back-end solution.

The MCC awards at most one medal per team and per category, so when one of these variants
outranks ITS-Tools itself, the medal goes to the variant and ITS-Tools is listed just below the
podium even though its raw score would place it there. These variants are hosted in the
[MCC-drivers](https://github.com/yanntm/MCC-drivers) repository.

The same mechanism was already at work in 2020 with `ITS-LoLA`, a pure symbolic and structural
reduction front-end combined with LoLA, hosted at [its-lola](https://github.com/yanntm/its-lola).

## In 2026

ITS-Tools took gold in GlobalProperties and UpperBounds, and silver in the four other categories
(StateSpace, Reachability, CTL, LTL) at the [MCC 2026](https://mcc.lip6.fr/2026/results.php).
Six tools competed.

This year the contest introduced two new awards, both of which ITS-Tools took in the two
categories it won:

* the **Blue Whale** award, for the tool computing the highest number of correct values in a
  category. ITS-Tools computed 94.08% of the computable GlobalProperties values and 95.95% of the
  computable UpperBounds values (the Best Virtual Tool, an oracle assembled from all answers,
  reaches 95.14% and 96.60% respectively).
* the **James Cook** award, for the tool answering the largest number of *unique* correct results,
  i.e. results no other tool could produce. ITS-Tools contributed 1 192 unique values in
  GlobalProperties and 1 719 in UpperBounds.

ITS-Tools also reported the widest coverage of any submission, competing in all 13 examinations,
with a confidence rate of 99.998% (183 859 correct answers out of 183 862 significant values).

## In 2025

Gold in GlobalProperties and UpperBounds, silver in StateSpace, Reachability, CTL and LTL at the
[MCC 2025](https://mcc.lip6.fr/2025/results.php). Five tools competed.

Note that the MCC results page labels the StateSpace runner-up (20 777 pts) as `GreatSPN+red`;
that tool was not submitted in 2025 and the tool list, the confidence tables and the slides
presented at the Petri Nets conference all show ITS-Tools as the only other StateSpace
participant besides TINA.tedd.

## In 2024

The [MCC 2024](https://mcc.lip6.fr/2024/results.php) was the edition with the largest number of
combination tools: `GreatSPN+red`, `LTSMin+red` and ITS-Tools were all submitted by our team,
alongside 8 other tools.

 * UpperBounds gold went to ITS-Tools itself (22 942 pts, ahead of Tapaal at 22 471).
 * GlobalProperties gold went to `GreatSPN+red` (112 090 pts), with ITS-Tools just behind at
   111 888 pts.
 * StateSpace silver and Reachability silver also went to `GreatSPN+red` (16 184 and 47 277 pts).
 * LTL silver went to `LTSMin+red` (45 147 pts).
 * CTL silver went to ITS-Tools (29 573 pts).

This is a good illustration of the strength of the approach: the front-end reductions are worth
several places in the ranking whichever back-end they are plugged into.

## In 2023

ITS-Tools and its family won the following awards at the
[Model-Checking Contest 2023 edition](https://mcc.lip6.fr/2023) :

 * Reachability, LTL, UpperBounds, GlobalProperties gold :  <img src="https://mcc.lip6.fr/certificates/2023/gold-Reachability-2023.png" alt="Gold Reachability" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2023/gold-LTL-2023.png" alt="Gold LTL" width="50px" height="50px"> <img src="https://mcc.lip6.fr/certificates/2023/gold-UpperBounds-2023.png" alt="Gold Upper bounds" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2023/gold-GlobalProperties-2023.png" alt="Gold Global Properties" width="50px" height="50px">
 * CTL silver : <img src="https://mcc.lip6.fr/certificates/2023/silver-CTL-2023.png" alt="silver CTL" width="50px" height="50px">
 * StateSpace bronze :  <img src="https://mcc.lip6.fr/certificates/2023/bronze-StateSpace-2023.png" alt="Bronze StateSpace" width="50px" height="50px">

ITS-Tools thus *won* four out of six categories of the MCC 2023, including LTL for the first time,
and was on the podium of the other categories CTL and StateSpace.

These good overall results are also due to our submission of several combination tools "+red" with
ITS-Tools acting as a simplifying front-end for another engine: Reachability gold and CTL silver
were in fact collected by `LoLA+red` (44 612 and 32 163 pts), with ITS-Tools itself at 44 340 and
26 417 pts. While only one of these tools was competing for medals in a given category, they
performed very well overall.
Please see the [MCC-drivers](https://github.com/yanntm/MCC-drivers) repository that hosts these
variants.

## In 2022

This tool won the following awards at the
[Model-Checking Contest 2022 edition](https://mcc.lip6.fr/2022/) :

 * UpperBounds, GlobalProperties gold :  <img src="https://mcc.lip6.fr/certificates/2022/gold-UpperBounds-2022.png" alt="Gold Upper bounds" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2022/gold-GlobalProperties-2022.png" alt="Gold Global Properties" width="50px" height="50px">
 * Reachability, CTL, LTL silver : <img src="https://mcc.lip6.fr/certificates/2022/silver-Reachability-2022.png" alt="Silver Reachability" width="50px" height="50px"> <img src="https://mcc.lip6.fr/certificates/2022/silver-CTL-2022.png" alt="silver CTL" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2022/silver-LTL-2022.png" alt="silver LTL" width="50px" height="50px">
 * StateSpace bronze :  <img src="https://mcc.lip6.fr/certificates/2022/bronze-StateSpace-2022.png" alt="Bronze StateSpace" width="50px" height="50px">

It can be noted that although ITS-Tools went from Gold Reachability in 2021 to Silver in 2022,
this was in fact due to a run error from the contest organizers. This is visible if you search DNC
in [this page](https://mcc.lip6.fr/index.php?CONTENT=results/ReachabilityCardinality.html&TITLE=Results%20for%20ReachabilityCardinality)
or [here](https://mcc.lip6.fr/index.php?CONTENT=results/ReachabilityFireability.html&TITLE=Results%20for%20ReachabilityFireability).
These DNC answers from ITS-Tools are all bugs in the MCC managed experiment, not bugs in ITS-Tools.

Since this was not diagnosed before the contest results were announced, the 2022 "Reachability"
results stand with ITS-Tools in Silver and [Tapaal](https://www.tapaal.net/) in Gold. But Gold2021
(i.e. ITS-Tools from 2021) did get the best score on Reachability in 2022 (in front of Tapaal).
We did reclaim the Reachability gold in 2023.

## In 2021

This tool won the following awards at the
[Model-Checking Contest 2021 edition](https://mcc.lip6.fr/2021/) :

 * Reachability, UpperBounds, GlobalProperties gold :  <img src="https://mcc.lip6.fr/certificates/2021/gold-Reachability-2021.png" alt="Gold Reachability" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2021/gold-UpperBounds-2021.png" alt="Gold Upper bounds" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2021/gold-GlobalProperties-2021.png" alt="Gold Global Properties" width="50px" height="50px">
 * CTL, LTL silver :  <img src="https://mcc.lip6.fr/certificates/2021/silver-CTL-2021.png" alt="silver CTL" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2021/silver-LTL-2021.png" alt="silver LTL" width="50px" height="50px">
 * StateSpace bronze :  <img src="https://mcc.lip6.fr/certificates/2021/bronze-StateSpace-2021.png" alt="Bronze StateSpace" width="50px" height="50px">

It thus was on the podium of *all* categories of the contest, and outright won half of them.

## In 2020

This tool won the following awards at the
[Model-Checking Contest 2020 edition](https://mcc.lip6.fr/2020/) :

 * Reachability gold : <img src="https://mcc.lip6.fr/certificates/2020/gold-Reachability-2020.png" alt="Gold Reachability" width="50px" height="50px">
 * CTL, LTL, StateSpace bronze :  <img src="https://mcc.lip6.fr/certificates/2020/bronze-CTL-2020.png" alt="Bronze CTL" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2020/bronze-LTL-2020.png" alt="Bronze LTL" width="50px" height="50px">  <img src="https://mcc.lip6.fr/certificates/2020/bronze-StateSpace-2020.png" alt="Bronze StateSpace" width="50px" height="50px">

It also got the second place (silver ?) in the
[Deadlock Detection](https://mcc.lip6.fr/2020/index.php?CONTENT=results/ReachabilityDeadlock.html&TITLE=Results%20for%20ReachabilityDeadlock)
category, though in 2020 this category was merged into "GlobalProperties" (for the first time) so
there is no related medal.

In pure symbolic and structural reduction mode it also participated in conjunction with LoLA, as
the tool ITS-LoLA, and won several awards: UpperBounds gold (16 350 pts against 15 629 for Tapaal),
Reachability silver (34 962 pts, just 39 points behind ITS-Tools) and LTL gold (29 237 pts).
The ITS-LoLA project lives at [its-lola](https://github.com/yanntm/its-lola).

## Previous years

The tool gathered many medals in the MCC and has been participating since the first edition in
2011.
The 2020 submission is however a major landmark, with new strategies described in the paper
"Structural Reductions Revisited" published at PetriNets 2020.

See the [contest pages](https://mcc.lip6.fr/) for more details on the awards won for previous
years.
