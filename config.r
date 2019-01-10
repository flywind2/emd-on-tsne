# Copyright (C) 2019 - Allison Greenplate, Brian Oberholtzer
# You may use, distribute and modify this code under the
# terms of the MIT license.

max_iterations <- 10000

# A binning factor of 1 groups tSNE values into matrix coordinates based on simple rounding to whole numbers
# A factor of 2 (for example) creates half as many bins as a factor of 1 
binning_factor <- 1

# name two columns that contain values that become the 'locations' for source and destinations in the source and destination worlds.
column1_name <- "tSNE1"
column2_name <- "tSNE2"

print( sprintf("Max iterations is %d", max_iterations))
print( sprintf("Binning factor is %f", binning_factor ))


