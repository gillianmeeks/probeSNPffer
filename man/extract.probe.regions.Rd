\name{extract.probe.regions}
\alias{extract.probe.regions}
\title{Extract BED-formatted CpG probe genomic coordinates}
\usage{
extract.probe.regions(CpG_info)
}
\description{
Takes positional, strand, and technology information about a set of CpG probes and return genomic coordinates of the probe region in BED format. Manifest object must be a dataframe with the exact columns: 'CpG_id', 'chr',
'CpG_position', 'strand', 'type'. Referring to CpG probe name, chromosome location, base pair position of the CpG sites from the Illumina manifest, strand (+ or 1), and type (I for type 1 or ii for type 2), respectively. CpG_info contains an example manifest object.
}
