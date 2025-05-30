
# Download GEO Microarray Gene Expression Dataset using R

This repository provides an R script to query, download, and process microarray gene expression datasets from the NCBI Gene Expression Omnibus (GEO) database using the `GEOquery` package.


Follow like share and subscribe https://www.youtube.com/@Bioinformatics_Made_Easy



## 🧬 Overview

NCBI GEO hosts a vast collection of gene expression data. This project focuses on microarray experiments and offers a simple R-based workflow to:

- Download data for a specific GEO Series (GSE)
- Extract expression matrices
- Export the data for downstream analysis

## 📦 Requirements

To run the script, you need the following R packages:

- `GEOquery`
- `Biobase`

Install them using the following commands:

```r
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("GEOquery")
BiocManager::install("Biobase")
