#!/bin/bash

krakenuniq --report-file 3mA_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 3mA_report.txt --preload-size 14G 3mA.fastq.gz
krakenuniq --report-file 3mB_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 3mB_report.txt --preload-size 14G 3mB.fastq.gz
krakenuniq --report-file 3m-10report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 3m-10_report.txt --preload-size 14G 3m-10.fastq.gz
krakenuniq --report-file 7m-8report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 7m-8_report.txt --preload-size 14G 7m-8.fastq.gz
krakenuniq --report-file 12m-8_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 12m-8_output.txt --preload-size 14G 12m-8.fastq.gz
krakenuniq --report-file 18m-9_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 18m-9_output.txt --preload-size 14G 18m-9.fastq.gz
krakenuniq --report-file 22m-25_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 22m-25_output.txt --preload-size 14G 22m-25.fastq.gz
krakenuniq --report-file 22mA_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 22mA_output.txt --preload-size 14G 22mA.fastq.gz
krakenuniq --report-file 22mb_both_report.txt --db refdb/kuniq_standard_minus.kdb.20200816 --output 22mb_both_output.txt --preload-size 14G 22mb_both.fastq.gz
