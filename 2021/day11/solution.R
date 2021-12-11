#!/usr/bin/env Rscript
infile <- unlist(read.fwf("input.txt", rep(1, 10)))
m <- function(k) { res <- k + c(0, if (k %% 10 != 1) -1, if (k %% 10 != 0) 1) ; c(res, if (k > 10) res - 10, if (k < 91) res + 10) }
l <- lapply(seq_along(infile), m) ; x <- setNames(infile, 1:100) ; n <- 0L ; r <- 0L
while (any(x != 0)) { r <- r + 1L ; x <- x + 1L 
                      while (any(x >= 10L)) { idx <- table(unlist(l[x >= 10L])) ; x[x >= 10] <- -Inf ; x[names(idx)] <- x[names(idx)] + idx } ; n <- n + sum(is.infinite(x)) ; if (r == 100L) rr <- n ; x[is.infinite(x)] <- 0 }
paste("🎄1:",rr,"🎄2:",r)
