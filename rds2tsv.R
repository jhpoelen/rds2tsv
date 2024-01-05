#!/usr/bin/env Rscript
#
# streams rds file from stdin to tsv stdout
#
# Requirements:
#  - R https://r-project.org 
#  - macos/linux or other kind of POSIX 
#
# Example:
#
# curl -L https://open.flinders.edu.au/ndownloader/files/43331472 | ./rds2tsv.R > beeTaxonomy.tsv
#
# with first two lines being
#
# flags	taxonomic_status	source	accid	id	kingdom	phylum	class	order	family	subfamily	tribe	subtribe	validName	canonical	canonical_withFlags	genus	subgenus	species	infraspecies	authorship	taxon_rank	valid	notes
#	accepted	DiscoverLife	0	4	Animalia	Arthropoda	Insecta	Hymenoptera	Andrenidae	Panurginae	Calliopsini		Acamptopoeum argentinum (Friese, 1906)	Acamptopoeum argentinum	Acamptopoeum argentinum	Acamptopoeum		argentinum		(Friese, 1906)	Species	TRUE	
#
#  Example taken from R code associated with:
#  
#  Dorey, J.B., Fischer, E.E., Chesshire, P.R. et al. A globally synthesised and flagged bee occurrence dataset and cleaning workflow. Sci Data 10, 747 (2023). https://doi.org/10.1038/s41597-023-02626-w
#

write.table(readRDS(xzfile('/dev/stdin')), sep='\t', na='', row.names=F, quote=F)
