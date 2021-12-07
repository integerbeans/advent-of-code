#!/usr/bin/env ruby
i = gets.split(',').map(&:to_i)
res_a = (0..i.max).map { |y| i.sum { |x| (x-y).abs } }.min
res_b = (0..i.max).map { |y| i.sum { |x| r = (x-y).abs; (r*(r+1))/2 } }.min
puts "🎄1: %d \ 🎄2: %d" % [res_a,res_b]