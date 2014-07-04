

Running dbcreator_ucsc module
========================================================

First, create and go to a folder named, e.g., **db_1.01_05.12.2014**. A database name consists of the **db** prefix, the **1.01** database version, and the **05.12.2014** date when the database was created. Note that throughout this guide `[dir]` represents the **full path** to a database (i.e `[dir] = /home/testuser/Documents/db_1.01_05.12.2014`). Do not use `~` shortcuts.

```
mkdir [dir]
cd [dir]  # Recommended: the `dbcreator*` module should be executed within the [dir] folder
python -m grsnp.dbcreator_ucsc -g hg19 -d [dir]
```

Executing the `dbcreator_ucsc` module without any arguments will show short help text:
```
usage: python -m grsnp.dbcreator_ucsc [-h] --data_dir [DATA_DIR]
                                      [--organism [ORGANISM]]
                                      [--featurenames [FEATURENAMES]] [--max [MAX]]
                                      [--galaxy] [--score [SCORE]] [--scoreonly]
```
Using **--help** argument will show detailed help.

#### Required arguments

The **--data_dir**, or **-d** argument designates full path to the `[dir]` where the database is to be installed.

The **--organism**, or **-g** argument specifies organism code and genome assembly version. Organism-specific genome annotation data are placed under appropriate subfolders and automatically processed by the `server` module. Examples of organism codes: hg19, mm9, rn4, danRer7, dm3, ce6, sacCer3.

#### Advanced (optional) arguments

The **--featurenames**, or **-f** argument will process one, or a comma-separatet list of genomic feature names. Useful when one knows which features to get. Example: evofold,gwasCatalog.

The **--max**, or **-m** argument limits the number of genomic features *in each data type* to be processed. Useful when testing module' functionality.

The **--score**, or **-s** argument specifies score percentiles for [genome annotation data filtering](dbcreatorFiltering.md). Default: 25,50,75 percentiles.

The **--filteronly**, or **-o** argument is used when the main, unfiltered, database has been created. This argument triggers [genome annotation data filtering](dbcreatorFiltering.md).
