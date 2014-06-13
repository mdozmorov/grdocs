


dbcreator, a module for creating organism-specific databases of genome annotation elements
========================================================

Making the database should be the first step before running GenomeRunner server.

Create and go to the folder named, e.g., **db_1.01_05.12.2014**. The database name consists of the **db** prefix, the **1.01** database version, and the **05.12.2014** date when the database was created. Note that throughout this guide `[dir]` represents the **full path** to the database (i.e `[dir] = /home/testuser/Documents/db_1.01_05.12.2014`). Do not use `~` shortcuts.


```r
mkdir [dir]
cd [dir]  # Recommended: the `dbcreator` module should be executed within the [dir] folder
python -m grsnp.dbcreator -g hg19 -d [dir]
```


The **-d** parameter designates where the database is to be installed. Required.

The **-g** parameter indicates organism and genome assembly version. Organism-specific genome annotation data are placed in the appropriate subfolders, and automatically processed by the `server` module. Examples of organism codes: hg19, mm9, rn4, danRer7, dm3, ce6, sacCer3. Required.

As more genome annotation data become available, one may want to update the database. Simply re-run the `dbcreator` module specifying the new database `[dir]` name according to the above conventions. Multiple database names can be supplied to the `server` module, allowing a user to select the database version.