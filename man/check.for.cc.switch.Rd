\name{check.for.cc.switch}
\alias{check.for.cc.switch}
\title{check.for.cc.switch}
\usage{
  check.for.cc.switch(CpG_SNP_intersection[1, ])
}
\description{
Internal function to flag.overlap which checks for color-channel switching SNPs at the single base extension position for type 1 probes.
This function returns "not SBE" if the SNP is not at the single base exension, FALSE if the single base extension SNP is not color channel
switching and TRUE if the single base extension SNP is color channel switching. SNPs that are TRUE will cause unreliable methylation signal, 
but FALSE will not.
}
