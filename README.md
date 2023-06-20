# Masoko-eDNA-population-structure

Code and data for Liu et al. Nuclear environmental DNA resolves fine-scale population genetic structure in an aquatic environment.

NB, the fish data are mapped to the fAstCal1.2 genome; GCA_900246225.3

**assets**

KrakenUniq/3mA_report.txt  Output from KrakenUniq

KrakenUniq/3mB_report.txt  Output from KrakenUniq

KrakenUniq/3m-10_report.txt  Output from KrakenUniq

KrakenUniq/7m-8_report.txt  Output from KrakenUniq

KrakenUniq/12m-8_report.txt  Output from KrakenUniq

KrakenUniq/18m-9_report.txt  Output from KrakenUniq

KrakenUniq/22mb_both_report.txt  Output from KrakenUniq

KrakenUniq/22mA_report.txt  Output from KrakenUniq

KrakenUniq/22m-25_report.txt  Output from KrakenUniq

KrakenUniq/Bacteria_KrakenUniq.txt Percentage of reads from each microbial order in each sample

KrakenUniq/Topten.txt Percentage of reads from the most prevalent microbial orders by sample

AlleleSummaryData.xlsx Summary data of eDNA and fish allele frequencies

**scripts**

KrakenUniq_code.sh  Runs KrakenUniq for on each of the ONT fastq output from guppy

MicrobialAnalysis.R  R code for analyses of microbial data (CCA and plotting proportional compositions)

MappingCode.sh Code for trimming, mapping and sorting reads in fastq files to generate bam files

AlleleFrequencies_eDNA.txt Code for extracting target allele frequencies from eDNA bam files

AlleleFrequencies_Fish.txt Code for extracting target allele frequencies from fish vcf files

Fish_eDNA_comparison_Dec2022.R R code for analyses of allele frequencies (fish and eDNA) and admixture (from fish)

AlleleCallingCode.txt Code for extracting allele frequencies from bam files using known variants in target regions

