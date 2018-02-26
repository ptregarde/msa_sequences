#!/bin/bash
date +"%Y-%m-%d %H:%M:%S,%N" >> start.txt
for f in $(ls Sabre/seq/*.fasta);do
	date +"%Y-%m-%d %H:%M:%S,%N" > ${f%.fasta}.log
	../muscle3.8.31_i86linux64 -in $f -out ${f%.fasta}.afa -distance1 kmer20_4 -loga ${f%.fasta}.log -verbose
	date +"%Y-%m-%d %H:%M:%S,%N" >> ${f%.fasta}.log
done

for f in $(ls Sabre/seq/*.fasta);do
	date +"%Y-%m-%d %H:%M:%S,%N" > ${f%.fasta}.log2
	../muscle3.8.31_i86linux64 -in $f -out ${f%.fasta}.afa2 -distance1 kmer20_4 -loga ${f%.fasta}.log2 -verbose
	date +"%Y-%m-%d %H:%M:%S,%N" >> ${f%.fasta}.log2
done

for f in $(ls Sabre/seq/*.fasta);do
	date +"%Y-%m-%d %H:%M:%S,%N" > ${f%.fasta}.log3
	../muscle3.8.31_i86linux64 -in $f -out ${f%.fasta}.afa3 -distance1 kmer20_4 -loga ${f%.fasta}.log3 -verbose
	date +"%Y-%m-%d %H:%M:%S,%N" >> ${f%.fasta}.log3
done
date +"%Y-%m-%d %H:%M:%S,%N" >> end.txt

mv Sabre/seq/*.afa Sabre/aligned/20_4/
mv Sabre/seq/*.afa2 Sabre/aligned/20_4/
mv Sabre/seq/*.afa3 Sabre/aligned/20_4/
mv Sabre/seq/*.log Sabre/log/20_4/
mv Sabre/seq/*.log2 Sabre/log/20_4/
mv Sabre/seq/*.log3 Sabre/log/20_4/