#!/usr/bin/env ruby

xmas = {}
$stdin.readlines.map(&:split).each do |start, to, dest, equals, distance|
    xmas[[start,dest].sort] = distance.to_i
    end

    puts "🎄: "
    puts xmas.keys.flatten.uniq.permutation.map { |comb|
        comb.each_cons(2).reduce(0) {|s, start| s + xmas[start.sort] }
    }.sort.rotate(-1).first(2)