


Background
=============

GenomeRunner uses a `background`, or universe, of all genomic regions for random sampling. For SNPs, a background may be a set of all currently reported SNPs (useful for the analysis of the sets of SNPs from Genome-Wide Association Studies), or a set of all SNPs on a microarray chip (e.g., ImmunoChip, MetaboChip). Think about the background as all SNPs tested in a GWAS study, and the genomic features of interest (FOIs) as a subset of SNPs significantly associated with a disease/phenotype.

By default, all currently reported SNPs may be used as a background. Genomic coordinates of all currently reported SNPs in [BED format](http://genome.ucsc.edu/FAQ/FAQformat.html#format1) may be obtained from the [UCSC table browser](http://genome.ucsc.edu/cgi-bin/hgTables?command=start). E.g., for *Homo Sapiens* the `snp138.bed` file with genomic coordinates of all SNPs may be obtained by selecting `Mammals/Human/hg19/Variation/All SNPs(138)/snp138` in the appropriate drop-down menus, selecting "BED - browser extensible data" as the output format, specifying `snp138.bed` as the file name, and getting output as a 
gzip compressed file. Extract `snp138.bed.gz` into the `[dir]/custom_data/backgrounds/hg19/` folder. 

Other background files, such as (for *Homo Sapiens*) `snp138Common`, `snp138Flagged`, can also be downloaded and placed in the `[dir]/custom_data/backgrounds/hg19/` folder. To prioritize their order in the drop-down menu on the web page, each file name can be prefixed with a number that will be used to sort the files, e.g., `1snp138.bed`.

Bgzip'ed and tabix'ed files containing the sets of background SNPs should be placed into `[dir]/custom_data/backgrounds/[organism]`. Note that before bgzip'ing and tabix'ing the files it is important to ensure the end coordinate of each SNP is larger that the start coordinate. To ensure that, pre-process each file like:


```r
> awk 'BEGIN {OFS="t"} { if ( $3 <= $2) { print $1, $2, $2+1, $4, $5, $6 } else { print $0 } }' snp138.bed | sort -k1,1 -k2,2n -k3,3n | uniq > 1snp138+.bed && bgzip 1snp138+.bed && tabix 1snp138+.bed.gz
```


The logic is, to ensure that the end coordinate is larger that the start coordinate, sort/unique, bgzip and tabix the file.

The resulting folder with background sets may look like:


```r
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/1snp138+.bed.gz
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/1snp138+.bed.gz.tbi
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/2snp138Common.bed.gz
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/2snp138Common.bed.gz.tbi
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/3snp138Flagged.bed.gz
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/3snp138Flagged.bed.gz
```

