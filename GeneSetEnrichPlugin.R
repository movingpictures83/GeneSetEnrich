library(gage)
input <- function(inputfile) {
   cnts.norm <<- read.csv(inputfile)
}

run <- function() {}

output <- function(outputfile) {
###################################################
### code chunk number 10: gage
###################################################
ref.idx=5:8
samp.idx=1:4
data(kegg.gs)
#knockdown and control samples are unpaired
cnts.kegg.p <- gage(cnts.norm, gsets = kegg.gs, ref = ref.idx,
                    samp = samp.idx, compare ="unpaired")
saveRDS(cnts.kegg.p, outputfile)
}
