

Running dbcreator_encodeDCC module
========================================================

This module is used very similar to the [dbcreator_ucsc](dbcreator_ucsc.md) module. Two arguments are different:

The **--featuregroups** argument specifies the category name to process, taken from the [ENCODE DCC database](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/encodeDCC/). Useful when specific categories of regulatory datasets are needed. Example: wgEncodeAwgTfbsUniform

The **--max**, or **-m** argument limits the number of regulatory datasets *in each category* to be processed. Useful when testing module' functionality.

This module is under testing.
