def maskify(cc)
  # your beautiful code goes here
  nums_over_four = cc.length-4
  if nums_over_four.positive?
    nums_over_four.times do | i |
      cc[i] = '#'
    end
  else
    cc
  end
  cc
end

puts maskify('4556364607935616')
puts maskify('1')
puts maskify('11111')

# Test.assert_equals(maskify('4556364607935616'), '############5616')
# Test.assert_equals(maskify('1'), '1')
# Test.assert_equals(maskify('11111'), '#1111')