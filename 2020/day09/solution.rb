nums = $<.readlines.map(&:to_i)

w = 25
w.upto(nums.length - 1) do |i|
  p nums[i] if nums[i-w, w].combination(2)
                           .map(&:sum)
                           .all? { |x| x != nums[i] }
end

w.times do |cw|
  nums.each_cons(cw + 1)
      .detect { |x| x.size > 1 && x.sum == 57195069 }
      .tap { |x| puts x.min + x.max if x }
end
