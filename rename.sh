#!/bin/bash

for f in $(ls Ox/*);do
	mv "$f" "$f.fasta";
done