


Modules
========================================================

GenomeRunner is installed as a `grsnp` package. There are four modules in the package:

1. `dbcreator` # a module for creating organism-specific database
2. `server` # a main module for the web interface
3. `optimizer` # a module to pre-calculate background overlaps with all genomic features
4. `hypergeom4` # a command-line executable for the enrichment analysis

Before running GenomeRunner, the first step is to create a database of genomic annotations using the `dbcreator` module. Then, GenomeRunner can be run using the `server` or the `hypergeom4` modules.
