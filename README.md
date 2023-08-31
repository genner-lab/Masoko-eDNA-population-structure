# Masoko-eDNA-population-structure

Code and data for Liu et al. Nuclear environmental DNA resolves fine-scale population genetic structure in an aquatic environment.

NB, the fish data are mapped to the fAstCal1.2 genome; GCA_900246225.3

***

**assets**

***

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

KrakenUniq/Topten.txt Percentage of reads from the most prevalent microbial orders by sample  <br><br>

MassokoContext/Delalande_Data.txt Oxygen and temperature data, from Delalande (cited in text)

MassokoContext/Sidewelling_Light.txt Raw light intensity data for 5 replicates

MassokoContext/MaxLight.txt Maximum light intensity data for 5 replicates <br><br>

MassokoAlleles/Focal_regions.bed The 98 regions identified to contain SNPs (primers in Table S2)

MassokoAlleles/Focal_120SNPs.vcf Alleles called from focal 120 SNPs in fish samples 

MassokoAlleles/Focal_71SNPs.vcf Alleles called from focal 71 SNPs in fish samples 

MassokoAlleles/Focal_71SNPs.bed Coordinates of the 71 SNPs reliably represented in eDNA data

MassokoAlleles/Data_long.txt eDNA and fish (reference) allele frequencies at each depth (long format)

MassokoAlleles/FishAdmixture.txt Admixture proportions for individual fish; genome-wide and 71 SNPs

MassokoAlleles/eDNA_AlleleData_71.txt Frequencies of (reference) alleles in each eDNA sample

MassokoAlleles/contrasts3_22.txt Contrasts in frequencies of (reference) alleles from 3 to 22m, fish and eDNA

MassokoAlleles/depth.txt Sampling depth for the 16 eDNA samples used to quantify allele frequencies

MassokoAlleles/AlleleAnalysis_Summary.xls An excel workbook summarising key data

***

**scripts**

***

KrakenUniq_code.sh  Runs KrakenUniq for on each of the ONT fastq output from guppy

MicrobialAnalysis.R  R code for analyses of microbial data (CCA and plotting proportional compositions)  <br><br>

Massoko_ContextPlots2022.R  <br><br>

MappingCode.sh Code for trimming, mapping and sorting eDNA reads in fastq files to generate eDNA bam files

AlleleFrequencies_eDNA.txt Code for extracting target allele frequencies from eDNA bam files

AlleleFrequencies_Fish.txt Code for extracting target allele frequencies from fish vcf file

Fish_eDNA_comparison_Dec2022.R R code for analyses of allele frequencies (fish and eDNA) and admixture (from fish)



