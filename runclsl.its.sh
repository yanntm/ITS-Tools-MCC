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

	
	export PATH=$PATH:/home/ythierry/usr/local/bin/
	export BK_BIN_PATH=/home/ythierry/SLCL/ITS-Tools-MCC/bin/
	export BK_TIME_CONFINEMENT=960
	export BK_TOOL=its
	export BK_EXAMINATION=$exam
	export TEMPDIR=/tmp/
	
	if [ "$#" -ne 1 ]; then
		mkdir -p INPUTS/$modname-$formname
		\cp $form INPUTS/$modname-$formname/$exam.xml
		\cp $mod INPUTS/$modname-$formname/model.pnml
		echo "NO REDUCTION $modname-$formname"
		cd INPUTS/$modname-$formname	
		time $BK_BIN_PATH/../BenchKit_head.sh	
		cd ../..
	else	
		mkdir -p INPUTS/$modname-$formname.red
		\cp $redform INPUTS/$modname-$formname.red/$exam.xml
		\cp $redmod INPUTS/$modname-$formname.red/model.pnml	
		echo "REDUCTION $modname-$formname.red"
		cd INPUTS/$modname-$formname.red	
		time $BK_BIN_PATH/../BenchKit_head.sh	
		cd ../..
	fi
	
	
#	break
#done ;
 
