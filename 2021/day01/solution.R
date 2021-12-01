#!/usr/bin/env Rscript

tree <- "🎄"
rudolph <- as.integer(readLines("input.txt")) 
paste(tree,sum(diff(rudolph) > 0))
paste(tree,sum(diff(rudolph, lag = 3) > 0))