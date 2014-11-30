

Command line module FAQ
========================================================

### * The web interface allows filtering genomic features by score and strand. Can I do that in command line?

Yes. Note that the regulatory datasets with score and/or strand are filtered and placed into the `grsnp_db_##_###` subfolders (see [Database structure](../dbcreator/dbcreatorStructure.md)), where *##* is the % threshold and *###* is the "plus/minus" strand indicator (see [Filtering](../dbcreator/dbcreatorFiltering.md)). Simply provide paths to these filtered datasets in the `gfs.txt` file.
