


Modules
========================================================

GenomeRunner is installed as a `grsnp` package. There are four modules in the package:

1. `dbcreator` # module for creating organism-specific database
2. `optimizer` # module to pre-calculate background overlaps with all genomic features
3. `server` # module for the web interface
4. `hypergeom4` # command-line executable for  enrichment analysis

Before running GenomeRunner, create a database of genomic annotations using the [`dbcreator` module](../dbcreator/dbcreator.md). Then, run GenomeRunner web server using the [`server`](../server/server.md) module. To run GenomeRunner from command line, see [`hypergeom4`](../hypergeom4/hypergeom4.md) module.
