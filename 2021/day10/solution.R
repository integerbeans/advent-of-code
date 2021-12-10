#!/usr/bin/env Rscript

infile <- readLines("input.txt")

score <- c(")" = 3, 
           "]" = 57, 
           "}" = 1197, 
           ">" = 25137)

score_vec_names <- setNames(1:4, names(score))

comp <- c("(" = ")", 
          "[" = "]", 
          "{" = "}", 
          "<" = ">")

one <- function(x) { 
  while (grepl("<>|\\{\\}|\\[\\]|\\(\\)", x)) x <- gsub("<>|\\{\\}|\\[\\]|\\(\\)", "", x)
  y <- strsplit(x, "")[[1]]
  return(score[y[y %in% c(")",
                          "]", 
                          "}", 
                          ">")][1]])
}

two <- function(x) {
  while (grepl("<>|\\{\\}|\\[\\]|\\(\\)", x)) x <- gsub("<>|\\{\\}|\\[\\]|\\(\\)", "", x)
  y <- strsplit(x, "")[[1]] 
  tail(filter(score_vec_names[comp[rev(y)]], 5, method = "rec"), 1)
}

paste("🎄1:",sum(sapply(infile, one), na.rm = TRUE),"🎄2:",median(sapply(infile, two), na.rm = TRUE))
