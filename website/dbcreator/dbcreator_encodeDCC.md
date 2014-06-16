

Running dbcreator_encodeDCC module
========================================================

This module is used very similar to the [dbcreator_ucsc module](dbcreator_ucsc.md). Two arguments are different:

The **--featuregroups** argument specifies the group name to process, taked from [the ENCODE DCC database](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/). Useful when specific groups are of interest. Example: wgEncodeAwgTfbsUniform

The **--max**, or **-m** argument limits the number of genomic features *in each group* to be processed. Useful when testing module' functionality.
