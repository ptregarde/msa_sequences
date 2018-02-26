#!/bin/bash

for f in $(ls Sequences/BaliRef3/*.tfa.afa);do
	qscore/qscore -test ${f%} -ref ${f%.tfa.afa} -ignoretestcase -cline -modeler -perseq > ${f%}.scores 
done 

for f in $(ls Sequences/BaliRef3/*.tfa.afa2);do
	qscore/qscore -test ${f%} -ref ${f%.tfa.afa2} -ignoretestcase -cline -modeler -perseq > ${f%}.scores2 
done 

for f in $(ls Sequences/BaliRef3/*.tfa.afa3);do
	qscore/qscore -test ${f%} -ref ${f%.tfa.afa3} -ignoretestcase -cline -modeler -perseq > ${f%}.scores3 
done 
