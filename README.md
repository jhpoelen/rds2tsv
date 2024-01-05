# [rds2tsv.R](./rds2tsv.R)
Streams R Data Serialized (rds) format from stdin to stdout in tab-separated-values (tsv) using R

# Example

```bash 
curl -L https://open.flinders.edu.au/ndownloader/files/43331472\
 | ./rds2tsv.R\
 > beeTaxonomy.tsv
```

with first 2 lines of beeTaxonomy.tsv being:

| flags | taxonomic_status | source | accid | id | kingdom | phylum | class | order | family | subfamily | tribe | subtribe | validName | canonical | canonical_withFlags | genus | subgenus | species | infraspecies | authorship | taxon_rank | valid | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | accepted | DiscoverLife | 0 | 4 | Animalia | Arthropoda | Insecta | Hymenoptera | Andrenidae | Panurginae | Calliopsini |  | Acamptopoeum argentinum (Friese, 1906) | Acamptopoeum argentinum | Acamptopoeum argentinum | Acamptopoeum |  | argentinum |  | (Friese, 1906) | Species | TRUE |  |


