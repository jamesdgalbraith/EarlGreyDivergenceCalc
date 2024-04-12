# EarlGreyDivergenceCalc
Python script to calculate divergence of repeats in Kimura distance from EarlGrey output and plot in R

### Divergence calculator requirements:

EMBOSS

Python 3.9+

pybedtools (and dependancies)

### Divergence plotting requirements (R packages):

tidyverse

plyranges

viridis

cowplot

ggtext

optparse

## Example usage

To calculate divergence:

python divergence_calc.py \
    -l icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi-families.fa.strained \
    -g seq/GCA_952773005.1_ihIcePurc2.1_genomic.fna \
    -i icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi.filteredRepeats.gff \
    -o icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi.filteredRepeats.divergence.gff \
    -t 4

To plot landscapes using calculated divergence in R:

Rscript divergence_plot.R \
    -s icerya_purchasi \
    -g icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/icerya_purchasi.filteredRepeats.divergence.gff \
    -o icerya_purchasi_EarlGrey/icerya_purchasi_summaryFiles/
