#! /bin/bash

set -x
set -e

form=$1
#for form in INPUTS/*/LTLCardinality.?.xml INPUTS/*/LTLCardinality.??.xml  INPUTS/*/LTLFireability.?.xml INPUTS/*/LTLFireability.??.xml ; 
#do 
	echo "form=$form" ; 
	mod=$(echo $form | sed 's/LTL/model.LTL/' | sed 's/.xml/.pnml/'); 
	echo "mod=$mod " 
	redform=$(echo $form | sed 's/.xml/.red.xml/') ; 
	echo "redform=$redform"  
	redmod=$(echo $mod | sed 's/.pnml/.red.pnml/'); 
	echo "redmod=$redmod" 
	
	modname=$(echo $mod | sed 's/INPUTS\///' | sed 's/\/.*//g')
	echo "modname=$modname" 
	exam=$(echo $form | sed 's/\..*//g' | sed 's/.*\///g');
	echo "exam=$exam"

	formname=$(echo $form | sed 's/\.xml//' | sed 's/.*\///g');
	echo "formname=$formname"

	echo "Treating:$modname-$formname" 

	mkdir INPUTS/$modname-$formname
	cp $form INPUTS/$modname-$formname/$exam.xml
	cp $mod INPUTS/$modname-$formname/model.pnml
	
	mkdir INPUTS/$modname-$formname.red
	cp $redform INPUTS/$modname-$formname.red/$exam.xml
	cp $redmod INPUTS/$modname-$formname.red/model.pnml	
	
	export PATH=$PATH:/home/ythierry/usr/local/bin/
	export BK_BIN_PATH=/home/ythierry/tapaal/MCC/
	export BK_TIME_CONFINEMENT=960
	export BK_TOOL=tapaal
	export BK_EXAMINATION=$exam
	export TEMPDIR=/tmp/
	
	echo "NO REDUCTION"
	cd INPUTS/$modname-$formname	
	$BK_BIN_PATH/BenchKit_head.sh	
	cd ../..
	
	echo "REDUCTION"
	cd INPUTS/$modname-$formname.red	
	$BK_BIN_PATH/BenchKit_head.sh	
	cd ../..
	
	
	
#	break
#done ;
 