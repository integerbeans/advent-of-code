input = File.read('input.txt').split('');

s = [[0,0],[0,0]].cycle
h = {[0,0] => 1}

input.each do |instruction|
  pos = s.next
  case instruction
    when '>'; pos[0] += 1
    when '<'; pos[0] -= 1
    when '^'; pos[1] -= 1
    when 'v'; pos[1] += 1
  end
  h[[pos[0],pos[1]]] = 1
end

puts("🎄",h.length)
