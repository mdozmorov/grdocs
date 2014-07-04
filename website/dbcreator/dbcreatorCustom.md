

Custom data
============

Custom features of interest (FOIs)
-----------------------------

Sometimes we want to have sets of features of interest readily accessible for analysis. We may place such sets in the named subfolders under the `[dir]/custom_data/fois/[organism]/` folder. The names of the subfolders will serve as descriptions of the sets of FOIs, e.g., *Immune_GWAS".

An example of the `fois` folder may look like:

```
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAStest1/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWASrand/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/SNPsCommonRand/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAScatalogFull/*.bed
```

Custom genomic features (GFs)
-----------------------

Some genome annotation tracks contain information about different biologically relevant features combined together. An example of such combined table is `wgEncodeRegTfbsClusteredV3` track, containing experimentally detected transcription factor binding sites for 161 different transcription factors. We may want to consider the data for each transcription factor separately. We process such combined data using the `extract_UCSC.py` script (see the `db` subfolder in the [source code](https://github.com/mdozmorov/genome_runner)). We place extracted BED files in the `[dir]/custom_data/gfs/hg19/tfbsEncode` folder. The `tfbsEncode` GFs will be accessible through GenomeRunner's web interface.

It is a good idea to remove special characters from file names, if any, by running:

```
for FILE in *.bed; do mv -v "$FILE" echo $FILE | tr ' ' '_' | tr -d '[{}(),!]' | tr -d "'" | tr '[A-Z]' '[a-z]' | sed 's/_-_/_/g';done
```

An example of the `gfs` folder may look like:

```
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/tfbsEncode/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/H3K4me3/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/gwasCatalog/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/chromStates/*.bed
```

Random sets of SNPs
--------------------
Random SNP sets are used to check for lack of enrichment. They can be generated from a background file using the following command:
```
for i in {10..19}; do n=$((2**i)); zcat snp128.bed.gz | shuf | head -n $n > rndsnp128_$n.bed; done
```

The logic here is to generate random SNP sets of different sizes. The sizes are determined by the power of 2 from {10..19} range, so the first set will contain 2^10=1024 random SNPs, the second - 2^11 etc. Those random SNP sets can be placed under the `[dir]/custom_data/fois/[organism]/` folder.

rsid_conversion folder
-----------------------
This folder contains organism-specific .BED file (BED6) for conversion of the lists of rsIDs into genomic coordinates. For example, for *Homo Sapiens* this folder may look like:
```
rsid_conversion/hg19/snp138.bed
```
The genomic coordinates and rsIDs from the `snp138.bed` file are used to cross-map user-provided lists of rsIDs with genomic coordinates.

**Note:** This is an experimental feature prone to undesired results. For example, some SNPs may map to multiple places in the genome and their rsIDs will be cross-mapped with all these places, resulting in underestimated enrichments. Caveat emptor.
