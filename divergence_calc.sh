#!/bin/bash

# Example command
GENOME=/Users/jgalbrai/Documents/IceryaGenomeSize/seq/GCA_952773005.1_ihIcePurc2.1_genomic.fna
LIBRARY=/Users/jgalbrai/Documents/IceryaGenomeSize/data/icerya_purchasi_summaryFiles/icerya_purchasi-families.fa.strained
IN_GFF=head_icerya_purchasi.filteredRepeats.gff
OUT_GFF=head_100000_icerya_purchasi.filteredRepeats.divergence.gff
THREADS=4

python divergence_calc.py -l $LIBRARY -g  $GENOME -i  $IN_GFF -o $OUT_GFF -t $THREADS
