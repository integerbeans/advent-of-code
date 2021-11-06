require "set"
INFILE = File.read('input').split("\n\n")
puts "🎄 => " + "#{ INFILE.map { |group| group.gsub("\n", '').split('').to_set.length }.reduce(:+) }"
puts "🎄 => " + "#{ INFILE.map { |group| group.split("\n").map { |list| list.split('') }.reduce(:&).length }.reduce(:+) }"
