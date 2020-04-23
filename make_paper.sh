#!/bin/bash

rmdfile=$1
echo $rmdfile
supplement=$2
echo $supplement

Rscript -e "rmarkdown::render('${rmdfile}.Rmd', output_format = 'all')"	

if [[ ${supplement} == "TRUE" ]]; then
	Rscript -e "rmarkdown::render('supplementary_material.Rmd', output_format = 'all')"	
fi
