

Filtering by score and strand
------------------------------
Some genome annotation tracks have a "score" column, generally indicating strength of measured signal within genomic regions. Sometimes we want to consider only genomic regions with high strength signal, ignoring those with low signal.

The "score" generally ranges from 0 to 1000; however, there are multiple exceptions from this rule. Therefore, we implement percent (%) threshold filtering. For example, if for a given genome annotation track the score ranges from 0 to 1000, selecting 25% threshold will reomve genomic features with score smaller than 250.

Filtering by score will creates the following folder structure:

```
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_25
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_50
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_75
```

Filtering by strand further separates genome annotation data into strand-specific datasets. This step creates the following folder structure:
```
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_25_plus
/home/testuser/Documents/db_1.01_05.12.2014/grsnp_db_25_minus
```

Both filtering steps are invoked automatically by both [dbcreator*](dbcreator.md) modules.
