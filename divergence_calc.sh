#!/bin/bash

# Example comusagemand
GENOME=seq/GCA_952773005.1_ihIcePurc2.1_genomic.fna
LIBRARY=icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi-families.fa.strained
IN_GFF=icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi.filteredRepeats.gff
OUT_GFF=icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi.filteredRepeats.divergence.gff
SPECIES_NAME=icerya_purchasi
OUT_DIR=icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/
THREADS=4

python divergence_calc.py -l $LIBRARY -g $GENOME -i  $IN_GFF -o $OUT_GFF -t $THREADS
Rscript divergence_plot.R -s $SPECIES_NAME -g $OUT_GFF -o $OUT_DIR