


Custom data
============

Custom features of interest
-----------------------------

Sometimes it may be useful to have the sets of features of interest readily accessible for the analyses, such as demo sets, or sets of random features. The BED files with genomic coordinates of the FOIs are placed in the subfolders under `[dir]/custom_data/fois/[organism]/`. The names of the subfolders serve as a description of the sets of FOIs.

An example of the folder containing the sets of FOIs may look like:


```r
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAStest1/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWASrand/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/SNPsCommonRand/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAScatalogFull/*.bed
```


Custom genomic features
-----------------------

Some genome annotation tracks contain information about different biologically relevant features, lumped together. An example of such a combined table is the `wgEncodeRegTfbsClusteredV3` track, containing experimentally detected transcription factor binding sites for 161 different transcription factors. The data for each TF can be extracted in separate files using the `extract_UCSC.py` script (see `db` subfolder in the [source code](https://github.com/mdozmorov/genome_runner) folder). These files may be placed in the `[dir]/custom_data/gfs/hg19/tfbsEncode` folder, and the `tfbsEncode` gfs will be accessible through GenomeRunner's web interface.

It is a good idea to remove special characters from file names, if any, by running:


```r
> for FILE in *.bed; do mv -v "$FILE" echo $FILE | tr ' ' '_' | tr -d '[{}(),!]' | tr -d "'" | tr '[A-Z]' '[a-z]' | sed 's/_-_/_/g';done
```


and bgzip and tabix those files for faster processing.

An example of the folder containing the sets of FOIs may look like:


```r
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAStest1/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWASrand/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/SNPsCommonRand/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/fois/hg19/GWAScatalogFull/*.bed
```



```r
> for file in find . -type f -name '*.bed'; do sort -k1,1 -k2,2n -k3,3n $file | uniq > $file"a" && mv $file"a" $file && bgzip $file && tabix $file".gz";done
```


An example of the folder containing the sets of FOIs may look like:


```r
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/tfbsEncode/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/chromStates/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/repeats/*.bed
> /home/testuser/Documents/db_1.01_05.12.2014/custom_data/gfs/hg19/altSplicing/*.bed
```



