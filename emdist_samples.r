#! /usr/local/bin/Rscript
# Copyright (C) 2019 - Allison Greenplate, Brian Oberholtzer
# You may use, distribute and modify this code under the
# terms of the MIT license.
source(file="flow_emd.r")

args = commandArgs(trailingOnly=TRUE)
# arg[1] - sample file 1
# arg[2] - sample file 2
# arg[3] - optional name of graphic file to save showing EMD source and destinations

print( execute_emd( args[1], args[2], if ( length(args) == 3 ) args[3] else NULL) )


