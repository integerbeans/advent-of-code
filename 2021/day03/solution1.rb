#!/usr/bin/env ruby

infile = $<.to_a.map(&:strip).map(&:chars)
gamma = infile.transpose.map { |x| x.group_by{|y|y}.sort_by{_2.length}[-1][0] }.join.to_i(2)
epsilon = infile.transpose.map { |x| x.group_by{|y|y}.sort_by{_2.length}[0][0] }.join.to_i(2)
p ["🎄1:", gamma*epsilon]
