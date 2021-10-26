#! /bin/bash

set -e


for i in INPUTS/*/LTLCardinality.?.xml INPUTS/*/LTLCardinality.??.xml INPUTS/*/LTLFireability.?.xml INPUTS/*/LTLFireability.??.xml ;
do
#  oarsub -l "/nodes=1/core=4,walltime=0:35:0" "uname -a ; cd /home/ythierry/SLCL/ITS-Tools-MCC/ && ./runclsl.sh $i ; exit" 
  oarsub -l "/nodes=1/core=4,walltime=0:35:0" "uname -a ; cd /home/ythierry/SLCL/ITS-Tools-MCC/ && ./runclsl.its.sh $i nored ; exit" 
  oarsub -l "/nodes=1/core=4,walltime=0:35:0" "uname -a ; cd /home/ythierry/SLCL/ITS-Tools-MCC/ && ./runclsl.its.sh $i ; exit" 
done


