

Command line module FAQ
========================================================

### * The web interface allows filtering genomic features by score and strand. Can I do that in command line?

Yes. Note that genome annotation data with score and/or strand are filtered and placed into `grsnp_db_##_###` subfolders (see [Database structure](../dbcreator/dbcreatorStructure.md)), where *##* is % threshold and *###* is "plus/minus" strand indicator (see [Filtering](../dbcreator/dbcreatorFiltering.md)). Simply provide paths to these filtered datasets in the `gfs.txt` file.
