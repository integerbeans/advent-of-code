#!/usr/bin/env julia
using Printf
i = split.(readlines("input.txt"),'|')
# following ideas from /r/adventofcode/comments/rbj87a/comment/hnp4saz
res = sum(parse.(BigInt,["4725360918"[[sum([X...].โe)รท2%15%11+1 for e in split(Y)]] for (X,Y) in i]))
@printf "๐2: %d \n" res