The EMD Flow Cytometry t-SNE R program depends on version 0.3-2 of the emdist libary.  

Intall the package as follows after installing R on your workstation.

# Install the emdist library

Run the R terminal from the command line, then enter the following.

`pkg <- "emdist_0.3-2.tar.gz"`

`loc <- "http://rforge.net/emd/snapshot"`

`url <- paste(loc, pkg, sep="/")`

`download.file(url, pkg)`

`install.packages(pkg, repos=NULL, type="source")`

Confirm the successful installation by then running

`library(emdist)`

`help( emd2d )`
