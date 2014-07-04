

Database structure
========================================================

Although the database structure may look daunting at first, it follows logical organization of the subfolders:

- `downloads` - the [organism] subfolders here store organism-specific raw genome annotation data. Populated by the `dbcreator*` modules, or by manually [mirroring the databases](dbcreatorFAQ.md);
- `grsnp_db` - the [organism] subfolders here contain organism-specific processed genome annotation data, organized into subfolders according to the UCSC schema. The ENCODE data (track names beginning with *wgEncode*) are placed under separate ENCODE subfolders strictured according to the `[dir]/grsnp_db/[organism]/ENCODE/[data source/type]/[Tier]/[cell type]` schema.
- `grsnp_db_##_plus/minus` subfolders contain genome annotation data filtered by ## percent score and/or strand thresholds, as described in the [Filtering](dbcreatorFiltering.md) section;
- `custom_data` - contains `backgrounds`, `fois`, `gfs` and `rsid_conversion` subfolders, each contains organism-specific pre-defined datasets (see [Custom data](dbcreatorCustom.md));
- `results` and `uploads` are special folders containing run-specific files.

An example of complete database structure may look like:

```
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
│   ├── gfs
│   │   ├── hg19
│   │   │   ├── gwasCatalog
│   │   │   ├── H3K4me3
│   │   │   └── tfbsEncode
│   │   ├── mm10
│   │   └── mm9
│   └── rsid_conversion
│       ├── hg19
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
├── grsnp_db_25_minus
├── grsnp_db_25_plus
│   
├── grsnp_db_50
│   
├── results
│   
└── uploads
```
