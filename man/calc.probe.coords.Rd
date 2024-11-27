\name{calc.probe.coords}
\alias{calc.probe.coords}
\title{calc.probe.coords}
\usage{
  calc.probe.coords(data(manifest_anno_object)[1,])
}
\description{
Internal function to extract.probe.regions which calculates the CpG probe region coordinates based on the strand and probe type, where manifest_anno_object is a correctly formated manifest object like CpG_info. 
This function returns the start and end coordinates for the 51 base pair region of type 1 probes and the 50 base pair region for type 2 probes.
}
