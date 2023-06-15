#!/bin/bash

cat L07-01_S1_L00?_R1_001.fastq.gz > L07-01_S1_L001-4_R1_001.fastq.gz
cat L07-01_S1_L00?_R2_001.fastq.gz > L07-01_S1_L001-4_R2_001.fastq.gz
cat L07-02_S2_L00?_R1_001.fastq.gz > L07-02_S2_L001-4_R1_001.fastq.gz
cat L07-02_S2_L00?_R2_001.fastq.gz > L07-02_S2_L001-4_R2_001.fastq.gz
cat L07-03_S3_L00?_R1_001.fastq.gz > L07-03_S3_L001-4_R1_001.fastq.gz
cat L07-03_S3_L00?_R2_001.fastq.gz > L07-03_S3_L001-4_R2_001.fastq.gz
cat L07-04_S4_L00?_R1_001.fastq.gz > L07-04_S4_L001-4_R1_001.fastq.gz
cat L07-04_S4_L00?_R2_001.fastq.gz > L07-04_S4_L001-4_R2_001.fastq.gz
cat L16-01_S5_L00?_R1_001.fastq.gz > L16-01_S5_L001-4_R1_001.fastq.gz
cat L16-01_S5_L00?_R2_001.fastq.gz > L16-01_S5_L001-4_R2_001.fastq.gz
cat L16-02_S6_L00?_R1_001.fastq.gz > L16-02_S6_L001-4_R1_001.fastq.gz
cat L16-02_S6_L00?_R2_001.fastq.gz > L16-02_S6_L001-4_R2_001.fastq.gz
cat L17-01_S7_L00?_R1_001.fastq.gz > L17-01_S7_L001-4_R1_001.fastq.gz
cat L17-01_S7_L00?_R2_001.fastq.gz > L17-01_S7_L001-4_R2_001.fastq.gz
cat L17-02_S8_L00?_R1_001.fastq.gz > L17-02_S8_L001-4_R1_001.fastq.gz
cat L17-02_S8_L00?_R2_001.fastq.gz > L17-02_S8_L001-4_R2_001.fastq.gz
cat L17-03_S9_L00?_R1_001.fastq.gz > L17-03_S9_L001-4_R1_001.fastq.gz
cat L17-03_S9_L00?_R2_001.fastq.gz > L17-03_S9_L001-4_R2_001.fastq.gz
cat L17-04_S10_L00?_R1_001.fastq.gz > L17-04_S10_L001-4_R1_001.fastq.gz
cat L17-04_S10_L00?_R2_001.fastq.gz > L17-04_S10_L001-4_R2_001.fastq.gz
cat L17-05_S11_L00?_R1_001.fastq.gz > L17-05_S11_L001-4_R1_001.fastq.gz
cat L17-05_S11_L00?_R2_001.fastq.gz > L17-05_S11_L001-4_R2_001.fastq.gz
cat L17-06_S12_L00?_R1_001.fastq.gz > L17-06_S12_L001-4_R1_001.fastq.gz
cat L17-06_S12_L00?_R2_001.fastq.gz > L17-06_S12_L001-4_R2_001.fastq.gz
cat L17-07_S13_L00?_R1_001.fastq.gz > L17-07_S13_L001-4_R1_001.fastq.gz
cat L17-07_S13_L00?_R2_001.fastq.gz > L17-07_S13_L001-4_R2_001.fastq.gz
cat L17-08_S14_L00?_R1_001.fastq.gz > L17-08_S14_L001-4_R1_001.fastq.gz
cat L17-08_S14_L00?_R2_001.fastq.gz > L17-08_S14_L001-4_R2_001.fastq.gz
cat L17-09_S15_L00?_R1_001.fastq.gz > L17-09_S15_L001-4_R1_001.fastq.gz
cat L17-09_S15_L00?_R2_001.fastq.gz > L17-09_S15_L001-4_R2_001.fastq.gz
cat L17-10_S16_L00?_R1_001.fastq.gz > L17-10_S16_L001-4_R1_001.fastq.gz
cat L17-10_S16_L00?_R2_001.fastq.gz > L17-10_S16_L001-4_R2_001.fastq.gz

#trimming, first the first 18bp of reverse

cutadapt -u 18 -o L07-01_S1_L001-4_R2_001_t1.fastq.gz  L07-01_S1_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L07-02_S2_L001-4_R2_001_t1.fastq.gz  L07-02_S2_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L07-03_S3_L001-4_R2_001_t1.fastq.gz  L07-03_S3_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L07-04_S4_L001-4_R2_001_t1.fastq.gz  L07-04_S4_L001-4_R2_001.fastq.gz 
cutadapt -u 18 -o L16-01_S5_L001-4_R2_001_t1.fastq.gz  L16-01_S5_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L16-02_S6_L001-4_R2_001_t1.fastq.gz  L16-02_S6_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-01_S7_L001-4_R2_001_t1.fastq.gz  L17-01_S7_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-02_S8_L001-4_R2_001_t1.fastq.gz  L17-02_S8_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-03_S9_L001-4_R2_001_t1.fastq.gz  L17-03_S9_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-04_S10_L001-4_R2_001_t1.fastq.gz  L17-04_S10_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-05_S11_L001-4_R2_001_t1.fastq.gz  L17-05_S11_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-06_S12_L001-4_R2_001_t1.fastq.gz  L17-06_S12_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-07_S13_L001-4_R2_001_t1.fastq.gz  L17-07_S13_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-08_S14_L001-4_R2_001_t1.fastq.gz  L17-08_S14_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-09_S15_L001-4_R2_001_t1.fastq.gz  L17-09_S15_L001-4_R2_001.fastq.gz
cutadapt -u 18 -o L17-10_S16_L001-4_R2_001_t1.fastq.gz  L17-10_S16_L001-4_R2_001.fastq.gz

#trimming, next adaptor from forward

cutadapt -a AGATCGG -o L07-01_S1_L001-4_R1_001_t2.fastq.gz  L07-01_S1_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L07-02_S2_L001-4_R1_001_t2.fastq.gz  L07-02_S2_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L07-03_S3_L001-4_R1_001_t2.fastq.gz  L07-03_S3_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L07-04_S4_L001-4_R1_001_t2.fastq.gz  L07-04_S4_L001-4_R1_001.fastq.gz 
cutadapt -a AGATCGG -o L16-01_S5_L001-4_R1_001_t2.fastq.gz  L16-01_S5_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L16-02_S6_L001-4_R1_001_t2.fastq.gz  L16-02_S6_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-01_S7_L001-4_R1_001_t2.fastq.gz  L17-01_S7_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-02_S8_L001-4_R1_001_t2.fastq.gz  L17-02_S8_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-03_S9_L001-4_R1_001_t2.fastq.gz  L17-03_S9_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-04_S10_L001-4_R1_001_t2.fastq.gz  L17-04_S10_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-05_S11_L001-4_R1_001_t2.fastq.gz  L17-05_S11_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-06_S12_L001-4_R1_001_t2.fastq.gz  L17-06_S12_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-07_S13_L001-4_R1_001_t2.fastq.gz  L17-07_S13_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-08_S14_L001-4_R1_001_t2.fastq.gz  L17-08_S14_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-09_S15_L001-4_R1_001_t2.fastq.gz  L17-09_S15_L001-4_R1_001.fastq.gz
cutadapt -a AGATCGG -o L17-10_S16_L001-4_R1_001_t2.fastq.gz  L17-10_S16_L001-4_R1_001.fastq.gz

#trimming, next adaptor from reverse

cutadapt -a AGATCGG -o L07-01_S1_L001-4_R2_001_t2.fastq.gz  L07-01_S1_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L07-02_S2_L001-4_R2_001_t2.fastq.gz  L07-02_S2_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L07-03_S3_L001-4_R2_001_t2.fastq.gz  L07-03_S3_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L07-04_S4_L001-4_R2_001_t2.fastq.gz  L07-04_S4_L001-4_R2_001_t1.fastq.gz 
cutadapt -a AGATCGG -o L16-01_S5_L001-4_R2_001_t2.fastq.gz  L16-01_S5_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L16-02_S6_L001-4_R2_001_t2.fastq.gz  L16-02_S6_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-01_S7_L001-4_R2_001_t2.fastq.gz  L17-01_S7_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-02_S8_L001-4_R2_001_t2.fastq.gz  L17-02_S8_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-03_S9_L001-4_R2_001_t2.fastq.gz  L17-03_S9_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-04_S10_L001-4_R2_001_t2.fastq.gz  L17-04_S10_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-05_S11_L001-4_R2_001_t2.fastq.gz  L17-05_S11_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-06_S12_L001-4_R2_001_t2.fastq.gz  L17-06_S12_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-07_S13_L001-4_R2_001_t2.fastq.gz  L17-07_S13_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-08_S14_L001-4_R2_001_t2.fastq.gz  L17-08_S14_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-09_S15_L001-4_R2_001_t2.fastq.gz  L17-09_S15_L001-4_R2_001_t1.fastq.gz
cutadapt -a AGATCGG -o L17-10_S16_L001-4_R2_001_t2.fastq.gz  L17-10_S16_L001-4_R2_001_t1.fastq.gz

### map to the genome (fAstCal1.2.fna)

#bwa mem for mapping

bwa mem fAstCal1.2.fna L07-01_S1_L001-4_R1_001_t2.fastq.gz L07-01_S1_L001-4_R2_001_t2.fastq.gz > Sample01.sam
bwa mem fAstCal1.2.fna L07-02_S2_L001-4_R1_001_t2.fastq.gz L07-02_S2_L001-4_R2_001_t2.fastq.gz > Sample02.sam
bwa mem fAstCal1.2.fna L07-03_S3_L001-4_R1_001_t2.fastq.gz L07-03_S3_L001-4_R2_001_t2.fastq.gz > Sample03.sam
bwa mem fAstCal1.2.fna L07-04_S4_L001-4_R1_001_t2.fastq.gz L07-04_S4_L001-4_R2_001_t2.fastq.gz > Sample04.sam
bwa mem fAstCal1.2.fna L16-01_S5_L001-4_R1_001_t2.fastq.gz L16-01_S5_L001-4_R2_001_t2.fastq.gz > Sample05.sam
bwa mem fAstCal1.2.fna L16-02_S6_L001-4_R1_001_t2.fastq.gz L16-02_S6_L001-4_R2_001_t2.fastq.gz > Sample06.sam
bwa mem fAstCal1.2.fna L17-01_S7_L001-4_R1_001_t2.fastq.gz L17-01_S7_L001-4_R2_001_t2.fastq.gz > Sample07.sam
bwa mem fAstCal1.2.fna L17-02_S8_L001-4_R1_001_t2.fastq.gz L17-02_S8_L001-4_R2_001_t2.fastq.gz > Sample08.sam
bwa mem fAstCal1.2.fna L17-03_S9_L001-4_R1_001_t2.fastq.gz L17-03_S9_L001-4_R2_001_t2.fastq.gz > Sample09.sam
bwa mem fAstCal1.2.fna L17-04_S10_L001-4_R1_001_t2.fastq.gz L17-04_S10_L001-4_R2_001_t2.fastq.gz > Sample10.sam
bwa mem fAstCal1.2.fna L17-05_S11_L001-4_R1_001_t2.fastq.gz L17-05_S11_L001-4_R2_001_t2.fastq.gz > Sample11.sam
bwa mem fAstCal1.2.fna L17-06_S12_L001-4_R1_001_t2.fastq.gz L17-06_S12_L001-4_R2_001_t2.fastq.gz > Sample12.sam
bwa mem fAstCal1.2.fna L17-07_S13_L001-4_R1_001_t2.fastq.gz L17-07_S13_L001-4_R2_001_t2.fastq.gz > Sample13.sam
bwa mem fAstCal1.2.fna L17-08_S14_L001-4_R1_001_t2.fastq.gz L17-08_S14_L001-4_R2_001_t2.fastq.gz > Sample14.sam
bwa mem fAstCal1.2.fna L17-09_S15_L001-4_R1_001_t2.fastq.gz L17-09_S15_L001-4_R2_001_t2.fastq.gz > Sample15.sam
bwa mem fAstCal1.2.fna L17-10_S16_L001-4_R1_001_t2.fastq.gz L17-10_S16_L001-4_R2_001_t2.fastq.gz > Sample16.sam

#samtools for converting sam to bam

samtools view -S -b Sample01.sam > Sample01.bam
samtools view -S -b Sample02.sam > Sample02.bam
samtools view -S -b Sample03.sam > Sample03.bam
samtools view -S -b Sample04.sam > Sample04.bam
samtools view -S -b Sample05.sam > Sample05.bam
samtools view -S -b Sample06.sam > Sample06.bam
samtools view -S -b Sample07.sam > Sample07.bam
samtools view -S -b Sample08.sam > Sample08.bam
samtools view -S -b Sample09.sam > Sample09.bam
samtools view -S -b Sample10.sam > Sample10.bam
samtools view -S -b Sample11.sam > Sample11.bam
samtools view -S -b Sample12.sam > Sample12.bam
samtools view -S -b Sample13.sam > Sample13.bam
samtools view -S -b Sample14.sam > Sample14.bam
samtools view -S -b Sample15.sam > Sample15.bam
samtools view -S -b Sample16.sam > Sample16.bam

#samtools for sorting bam

samtools sort  Sample01.bam > Sample01_sorted.bam
samtools sort  Sample02.bam > Sample02_sorted.bam
samtools sort  Sample03.bam > Sample03_sorted.bam
samtools sort  Sample04.bam > Sample04_sorted.bam
samtools sort  Sample05.bam > Sample05_sorted.bam
samtools sort  Sample06.bam > Sample06_sorted.bam
samtools sort  Sample07.bam > Sample07_sorted.bam
samtools sort  Sample08.bam > Sample08_sorted.bam
samtools sort  Sample09.bam > Sample09_sorted.bam
samtools sort  Sample10.bam > Sample10_sorted.bam
samtools sort  Sample11.bam > Sample11_sorted.bam
samtools sort  Sample12.bam > Sample12_sorted.bam
samtools sort  Sample13.bam > Sample13_sorted.bam
samtools sort  Sample14.bam > Sample14_sorted.bam
samtools sort  Sample15.bam > Sample15_sorted.bam
samtools sort  Sample16.bam > Sample16_sorted.bam

#samtools for adding read group labels

samtools addreplacerg -r ID:Sample01 -r LB:Sample01 -r SM:Sample01 -o Sample01_sorted_named.bam  Sample01_sorted.bam
samtools addreplacerg -r ID:Sample02 -r LB:Sample02 -r SM:Sample02 -o Sample02_sorted_named.bam  Sample02_sorted.bam
samtools addreplacerg -r ID:Sample03 -r LB:Sample03 -r SM:Sample03 -o Sample03_sorted_named.bam  Sample03_sorted.bam
samtools addreplacerg -r ID:Sample04 -r LB:Sample04 -r SM:Sample04 -o Sample04_sorted_named.bam  Sample04_sorted.bam
samtools addreplacerg -r ID:Sample05 -r LB:Sample05 -r SM:Sample05 -o Sample05_sorted_named.bam  Sample05_sorted.bam
samtools addreplacerg -r ID:Sample06 -r LB:Sample06 -r SM:Sample06 -o Sample06_sorted_named.bam  Sample06_sorted.bam
samtools addreplacerg -r ID:Sample07 -r LB:Sample07 -r SM:Sample07 -o Sample07_sorted_named.bam  Sample07_sorted.bam
samtools addreplacerg -r ID:Sample08 -r LB:Sample08 -r SM:Sample08 -o Sample08_sorted_named.bam  Sample08_sorted.bam
samtools addreplacerg -r ID:Sample09 -r LB:Sample09 -r SM:Sample09 -o Sample09_sorted_named.bam  Sample09_sorted.bam
samtools addreplacerg -r ID:Sample10 -r LB:Sample10 -r SM:Sample10 -o Sample10_sorted_named.bam  Sample10_sorted.bam
samtools addreplacerg -r ID:Sample11 -r LB:Sample11 -r SM:Sample11 -o Sample11_sorted_named.bam  Sample11_sorted.bam
samtools addreplacerg -r ID:Sample12 -r LB:Sample12 -r SM:Sample12 -o Sample12_sorted_named.bam  Sample12_sorted.bam
samtools addreplacerg -r ID:Sample13 -r LB:Sample13 -r SM:Sample13 -o Sample13_sorted_named.bam  Sample13_sorted.bam
samtools addreplacerg -r ID:Sample14 -r LB:Sample14 -r SM:Sample14 -o Sample14_sorted_named.bam  Sample14_sorted.bam
samtools addreplacerg -r ID:Sample15 -r LB:Sample15 -r SM:Sample15 -o Sample15_sorted_named.bam  Sample15_sorted.bam
samtools addreplacerg -r ID:Sample16 -r LB:Sample16 -r SM:Sample16 -o Sample16_sorted_named.bam  Sample16_sorted.bam

#Make an index for each bam file

samtools index Sample01_sorted_named.bam  Sample01_sorted_named.bam.bai
samtools index Sample02_sorted_named.bam  Sample02_sorted_named.bam.bai
samtools index Sample03_sorted_named.bam  Sample03_sorted_named.bam.bai
samtools index Sample04_sorted_named.bam  Sample04_sorted_named.bam.bai
samtools index Sample05_sorted_named.bam  Sample05_sorted_named.bam.bai
samtools index Sample06_sorted_named.bam  Sample06_sorted_named.bam.bai
samtools index Sample07_sorted_named.bam  Sample07_sorted_named.bam.bai
samtools index Sample08_sorted_named.bam  Sample08_sorted_named.bam.bai
samtools index Sample09_sorted_named.bam  Sample09_sorted_named.bam.bai
samtools index Sample10_sorted_named.bam  Sample10_sorted_named.bam.bai
samtools index Sample11_sorted_named.bam  Sample11_sorted_named.bam.bai
samtools index Sample12_sorted_named.bam  Sample12_sorted_named.bam.bai
samtools index Sample13_sorted_named.bam  Sample13_sorted_named.bam.bai
samtools index Sample14_sorted_named.bam  Sample14_sorted_named.bam.bai
samtools index Sample15_sorted_named.bam  Sample15_sorted_named.bam.bai
samtools index Sample16_sorted_named.bam  Sample16_sorted_named.bam.bai

#Get the mapping data

samtools flagstat Sample01.sam
samtools flagstat Sample02.sam
samtools flagstat Sample03.sam
samtools flagstat Sample04.sam
samtools flagstat Sample05.sam
samtools flagstat Sample06.sam
samtools flagstat Sample07.sam
samtools flagstat Sample08.sam
samtools flagstat Sample09.sam
samtools flagstat Sample10.sam
samtools flagstat Sample11.sam
samtools flagstat Sample12.sam
samtools flagstat Sample13.sam
samtools flagstat Sample14.sam
samtools flagstat Sample15.sam
samtools flagstat Sample16.sam

#end
