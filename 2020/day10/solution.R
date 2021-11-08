#!/usr/bin/env Rscript

tree <- "🎄"
rudolph <- read.table("input.txt")[[1]]
rudolph <- sort(c(0, rudolph, max(rudolph) + 3))
paste(tree,format(prod(rle(sort(diff(rudolph)))$lengths), scientific = FALSE))
reindeer <- rle(diff(rudolph))
paste(tree,format(prod(c(1,2,4,7)[reindeer$lengths[reindeer$values == 1]]),scientific = FALSE))