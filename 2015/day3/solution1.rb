input = File.read('input.txt').split('');

x = y = 0; 
r = {[0,0] => 1}; 
input.each { |num| case num; when '>'; x += 1; when '<'; x -= 1; when '^'; y -= 1; when 'v'; y += 1; end; r[[x,y]] = 1 };
puts("🎄",r.length);
