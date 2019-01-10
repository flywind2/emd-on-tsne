#! /usr/local/bin/Rscript
# Copyright (C) 2019 - Allison Greenplate, Brian Oberholtzer
# You may use, distribute and modify this code under the
# terms of the MIT license.
library(gplots)
library(reshape2)
args = commandArgs(trailingOnly=TRUE)
cohort_dir <- args[1]

cohort_results_file <- paste( cohort_dir, "cohort.csv", sep="/") 
heatmap_output_file <- paste( cohort_dir, "heatmap.png", sep="/")

# convert cohort CSV for use in heatmap.
results_as_dataframe <- read.csv(cohort_results_file, header = F)
results_as_matrix<-acast(results_as_dataframe, V1~V2, value.var="V3")

#Personalize colors for the heatmap
wyb <- colorRampPalette(c("black", "yellow", "lightyellow"))

png(heatmap_output_file, width = 1920, height = 1920/2)
heatmap.2(results_as_matrix, col = wyb, main = "Run 1", trace = "none", margins = c(10,12), Rowv = FALSE, Colv = FALSE)
dev.off()
