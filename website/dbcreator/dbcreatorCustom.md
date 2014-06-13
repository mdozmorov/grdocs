


Custom data
============

Custom features of interest (FOIs)
-----------------------------

Sometimes we may want to have sets of features of interest readily accessible for the analysis, such as demo sets, or sets of random features. We may place the BED files with genomic coordinates of such FOIs in the subfolders under the `[dir]/custom_data/fois/[organism]/` folder. The names of the subfolders serve as descriptions of the sets of FOIs.

An example of the `fois` folder may look like:


```r
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAStest1/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWASrand/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/SNPsCommonRand/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAScatalogFull/*.bed
```


Custom genomic features (GFs)
-----------------------

Some genome annotation tracks contain information about different biologically relevant features, combined together. An example of such combined table is the `wgEncodeRegTfbsClusteredV3` track, containing experimentally detected transcription factor binding sites for 161 different transcription factors. We may want to consider the data for each transcription factor separately. We process such combined data using the `extract_UCSC.py` script (see the `db` subfolder in the [source code](https://github.com/mdozmorov/genome_runner) folder). We place extracted BED files in the `[dir]/custom_data/gfs/hg19/tfbsEncode` folder. The `tfbsEncode` GFs will be accessible through GenomeRunner's web interface.

It is a good idea to remove special characters from file names, if any, by running:


```r
for FILE in *.bed; do mv -v "$FILE" echo $FILE | tr ' ' '_' | tr -d '[{}(),!]' | tr -d "'" | tr '[A-Z]' '[a-z]' | sed 's/_-_/_/g';done
```


An example of the `gfs` folder may look like:


```r
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/tfbsEncode/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/H3K4me3/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/gwasCatalog/*.bed
/home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/chromStates/*.bed
```

