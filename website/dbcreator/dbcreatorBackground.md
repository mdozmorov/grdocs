


Background
==========================================

GenomeRunner uses `background`, or universe, of all genomic regions for random sampling. For SNPs, the background may consist of  all currently reported SNPs (useful for the analysis of SNP sets from Genome-Wide Association Studies), or contain a set of all SNPs on a microarray chip (e.g., ImmunoChip, MetaboChip). Think about the background as all SNPs tested in a GWA study, and the genomic features of interest (FOIs) as a subset of SNPs significantly associated with a disease/phenotype. 

To create the background set of SNPs, obtain genomic coordinates of all currently reported SNPs found in >=1% of samples from the [UCSC table browser](http://genome.ucsc.edu/cgi-bin/hgTables?command=start). E.g., for *Homo Sapiens* they may be obtained by selecting `Mammals/Human/hg19/Variation/All SNPs(138)/snp138Common` in the appropriate drop-down menus, selecting "BED - browser extensible data" as the output format, specifying `snp138Common.bed` as the file name, and getting output as a 
gzip compressed file. Place the `snp138Common.bed.gz` file into the `[dir]/custom_data/backgrounds/hg19/` folder. 

Other background files, such as (for *Homo Sapiens*) `snp138`, `snp138Flagged`, can also be downloaded and placed in the `[dir]/custom_data/backgrounds/hg19/` folder. To prioritize their order in the drop-down menu on the web page, each file name can be prefixed with a number that will be used to sort them, e.g., `1snp138Common.bed.gz`.

As with the genome annotation data, we should ensure that no non-standard chromosome names are present in the background files, and the end coordinates are larger than the start coordinates. We also compress and index the background files. 


```r
for file in find [dir]/custom_data/backgrounds/[org] -type f -name "*.bed.gz"; do f=basename $file; d=dirname $file; echo $file; zcat $file | grep "\bchr[0-9XYM][^_]\b" | awk 'BEGIN {OFS="\t"} { if ( $3 <= $2) { print $1, $2, $2+1, $4, $5, $6 } else { print $0 } }' | sort -k1,1 -k2,2n -k3,3n | uniq > $d/${f%???} && rm $file; bgzip ${file%???} && tabix $file; done
```


The resulting folder with background sets may look like:


```r
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/1snp138.bed.gz
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/1snp138.bed.gz.tbi
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/2snp138Common.bed.gz
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/2snp138Common.bed.gz.tbi
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/3snp138Flagged.bed.gz
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/backgrounds/hg19/3snp138Flagged.bed.gz
```
