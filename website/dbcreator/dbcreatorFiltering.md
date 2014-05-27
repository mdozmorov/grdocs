


Filtering by score
-------------------
Some genome annotation tracks have "score" column, generally indicating the strength of measured signal within genomic regions. Sometimes we may want to consider only genomic regions with high signal, ignoring those with low signal.

The "score" is generally ranges from 0 to 1000; however, there are multiple exceptions from this rule. Therefore, we implement % threshold filtering. For example, if for a given genome annotation track the score ranges from 0 to 1000, the 25% threshold will select genomic features with score larger than 250.

We create subdatabases containing only genome annotation tracks filtered by a given percent threshold by running:


```r
python -m grsnp.dbcreator -g hg19 -d [dir] -o -s 25,50,75
```


The **-o** parameter runs processing of the unfiltered database.
The **-s** parameter contains comma-separated % thresholds.

This filtering step will create the following folder structure containing filtered data:


```r
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_25
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_50
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_75
```

