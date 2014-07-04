

server, a module to run web interface
========================================================

Before starting the web server, ensure you've created the [database](../dbcreator/dbcreator.md) and have at least one  [background file](../dbcreator/dbcreatorBackground.md). 

#### Multiple databases support

As more genome annotation data become available, it's a good idea to use the latest version of the data without losing previous database snapshots. Simply re-run the [dbcreator(../dbcreator/dbcreator.md) module specifying new database `[dir]` name according to the conventions. Multiple database names can be supplied to the `server` module, allowing a user to select the desired database version from the drop-down menu.

We start the web interface as:

```
python -m grsnp.server -g hg19 -d [dir1],[dir2],[dir3] -r [dir1]
```

where the **-d** argument accepts a single or comma-separated *full paths* to the databases. 

The **-r** argument specifies path to the `results` folder.

Access GenomeRunner on [http://localhost:8000/gr/](http://localhost:8000/gr/). 

The `server` module creates a log file (genomerunner_server.log) in the `[dir]` folder - study it for troubleshooting.
