

dbcreator_ucsc and dbcreator_encodeDCC, modules for creating organism-specific genome annotation databases
========================================================

Making database(s) should be the first step before running GenomeRunner server.

GenomeRunner started off with the advent of the [UCSC genome annotation database](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/). This database remains the main source of well organized and validated genome annotation data. Other data sources, such as pilot data from the [ENCODE Data Coordination Center](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/), or from the [Cistrome database](http://cistrome.dfci.harvard.edu/NR_Cistrome/index.html) are in process of being incorporated into GenomeRunner's framework.

Currently, GenomeRunner has two submodules for processing genome annotation data:
- `dbcreator_ucsc` - processes the [UCSC genome annotation database](hgdownload.cse.ucsc.edu/goldenPath/hg19/database/)
- `dbcreator_encodeDCC` - processes data from the [ENCODE Data Coordination Center](hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/) (experimental)

The main goal of both submodules is to convert different data formats into standard .BED files and organize them into tree-like categories. As they process different data and data categorization schemes, it is recommended to avoid mixing their output by using different `[dir]` folders.
