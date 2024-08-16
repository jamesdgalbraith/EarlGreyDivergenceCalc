#!/bin/bash

# Example comusagemand
GENOME_DIR=seq/
GENOME=seq/GCA_952773005.1_ihIcePurc2.1_genomic.fna
LIBRARY=data/Icerya_purchasi-families.fa.strained
IN_GFF=data/Icerya_purchasi.filteredRepeats.gff
OUT_GFF=data/Icerya_purchasi.filteredRepeats.divergence.gff
SPECIES_NAME=Icerya_purchasi
OUT_DIR=output/
THREADS=4

if [ ! -d $GENOME_DIR ]; then
  mkdir $GENOME_DIR
fi

if [ ! -f $GENOME ]; then
    echo 'Downloading genome.'
    cd $GENOME_DIR
    wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/952/773/005/GCA_952773005.1_ihIcePurc2.1/GCA_952773005.1_ihIcePurc2.1_genomic.fna.gz
    gunzip GCA_952773005.1_ihIcePurc2.1_genomic.fna.gz
    cd -
fi

python divergence_calc.py -l $LIBRARY -g $GENOME -i  $IN_GFF -o $OUT_GFF -t $THREADS
Rscript divergence_plot.R -s $SPECIES_NAME -g $OUT_GFF -o $OUT_DIR -f