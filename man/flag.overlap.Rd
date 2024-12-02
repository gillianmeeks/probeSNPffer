\name{flag.overlap}
\alias{flag.overlap}
\title{Identifying probes that overlap SNPs}
\usage{
flag.overlap(probe_bed,SNP_bed)
}
\arguments{
  \item{probe_bed}{ a \link{CpG_probe_bed} object that contains the CpG probe start and end coordinates (BED format).}
  \item{SNP_bed}{ a \link{SNP_bed} object that contains the SNP start and end coordinates (BED format).}

}
\value{
For probe_bed : a BED formatted CpG_probe_bed object that contains CpG probe start and end coordinates.
For SNP_bed : a BED formatted SNP_bed object that contain SNP start and end coordinates.
}
\description{Provide the BED formatted CpG probe regions you created from the extract.probe.regions step and a BED formatted SNP data file to search for intersections of probe regions with the SNP coordintaes. SNP_bed is an example SNP BED file.
The SNP BED file only needs to contain the SNP’s chromosome and BED formatted positions (must be columns 1,2,3) and REF, ALT alleles (must be columns 5,6). Using this and the CpG probe BED file we generated in the previous step, we can extract all instances of overlap between SNPs and CpG probes. This function also checks for color-channel switching SNPs at the single base extension (SBE) position of Type 1 probes and will mark them as TRUE if the REF/ALT pair will bias measurements or FALSE if they do not bias measurements. Generally only color-channel switching probe SNPs need to be excldued from analyses.
}
