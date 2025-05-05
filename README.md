# probeSNPffer
[@hennlab](https://github.com/hennlab)
R package to identify methylation microarray probes whose sequences contain a SNP, given a BED file of variants. The methylation signal reported at such probes may be unreliable.
Authors: Gillian Meeks and Shyamalika Gopalan
[![DOI](https://zenodo.org/badge/617581082.svg)](https://zenodo.org/doi/10.5281/zenodo.10067503)


<img src="https://github.com/user-attachments/assets/0c0f573d-df83-49b8-8e89-5d277a4b8561" alt="probeSNPffer2" width="300"/> 

(image: Alexia Huang)


Install package:
```
devtools::install_github("https://github.com/gillianmeeks/probeSNPffer",build_vignettes = TRUE)
```
View vignette:

```
library(probeSNPffer)
browseVignettes(package = "probeSNPffer")
```

Diagram of probe coordinate scheme (adapted from: Planterose Jiménez et al. Genome Biology (2021) 22:274)
![vignette_probe_diagram](https://user-images.githubusercontent.com/31638949/226993687-b58b05ef-52b6-4024-af89-2a9e5bff0992.png)
Blue bars represent the genomic DNA strands, both forward (+) and reverse (-) and red bars represent the type 1 and type 2 probes and where they hybridize to the genomic strands. The probe regions are marked with reference to the forward strand coordiante of the target Cytosine, i.e. the probe region for Type 1, minus strand targeted probes extends [p-48, p+2].


This package was developed for Meeks, G.L., Henn, B.M. & Gopalan, S. Genetic differentiation at probe SNPs leads to spurious results in meQTL discovery. Commun Biol 6, 1295 (2023). https://doi.org/10.1038/s42003-023-05658-5
