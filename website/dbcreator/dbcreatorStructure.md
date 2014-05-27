


Database structure
========================================================

Although the database structure may look daunting at first, it follows logical organization of the subfolders, detailed in the following sections.

The database contains several folder groups:
- `downloads` - subfolders store organism-specific raw genome annotation data. Populated by the `dbcreator` module, or by manually mirroring the [USCS database](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/);
- `grsnp_db` - subfolders contain organism-specific processed genome annotation data, sorted into subfolders according to the UCSC schema. `grsnp_db_##` subfolders contain genome annotation data filtered by ## score threshold, detailed in the following section;
- `custom_data` - contains `backgrounds`, `fois` and `gfs` subfolders, each contains pre-defined sets of data, detailed in the following sections;
- `results` and `uploads` are system folders containing run-specific files.

An example of the complete database structure may look like:


```r
.
├── custom_data
│   ├── backgrounds
│   │   ├── hg19
│   │   ├── mm10
│   │   └── mm9
│   ├── fois
│   │   ├── hg19
│   │   │   ├── GWASmore15
│   │   ├── mm10
│   │   ├── mm9
│   └── gfs
│       ├── hg19
│       │   ├── gwasCatalog
│       │   ├── H3K4me3
│       │   └── tfbsEncode
│       ├── mm10
│       └── mm9
│   
├── downloads
│   
├── grsnp_db
│   └── hg19
│       ├── compGeno
│       ├── ENCODE
│       │   ├── BroadHistone
│       │   │   ├── Tier1
│       │   │   │   ├── Gm12878
│       │   │   │   ├── H1hesc
│       │   │   │   └── K562
│       │   │   ├── Tier2
│       │   │   │   ├── A549
│       ├── expression
│       ├── genes
│       ├── map
│       ├── neandertal
│       ├── phenDis
│       ├── regulation
│       ├── rep
│       ├── rna
│       ├── unsorted
│       └── varRep
│   
├── grsnp_db_25
│   
├── grsnp_db_50
│   
├── results
│   
└── uploads
```

