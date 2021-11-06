#!/usr/bin/env ruby

riddle = File.read("input.txt")

f = 0
c = {}

loop do
  riddle.each_line do |l |
    f += l.to_i
  if c[f] == 1
   puts("🎄", f)
   return
end
c[f] = 1
end
end
