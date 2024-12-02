\name{check.for.cc.switch}
\alias{check.for.cc.switch}
\title{check.for.cc.switch}
\usage{
  check.for.cc.switch(x)
}
\usage{
  check.for.cc.switch(x)
}
\arguments{
  \item{x}{ a row of a \link{CpG_SNP_intersection} object that contains the overlapping probe SNP information.}
}
\description{
Internal function to flag.overlap which checks for color-channel switching SNPs at the single base extension position for type 1 probes.
This function returns "not_SBE" if the SNP is not at the single base exension, "not_cc_switch" if the single base extension SNP is not color channel
switching and "cc_switch" if the single base extension SNP is color channel switching. SBE SNPs that are "cc_switch" will cause unreliable methylation signal, 
but "not_cc_switch" will not.
}
