# coding: utf-8
tr = {'F' => '0', 'B' => '1', 'L' => '0', 'R' => '1' }
id_seats = File.readlines("input").map(&:chomp).map{|z| z.split('').map{|x| tr[x]}.join.to_i(2)}

# solution 1
puts "🎄 => " + id_seats.max.to_s

# solution 2
my_seat = id_seats.sort_by {|v| v}.each_cons(2).detect { |a, b| b - a == 2 }
puts "🎄 => " + ((my_seat.max + my_seat.min) / 2).to_s
