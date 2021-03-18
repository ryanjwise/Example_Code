def find_next_square(sq)
  num = Math.sqrt(sq)
  if (answer % 1).zero?
    (num + 1) * (num + 1)
  else
    -1
  end
end

# Should return next square
puts find_next_square(121)
puts find_next_square(625)
puts find_next_square(319_225)
puts find_next_square(15_241_630_849)

# Fhould return -1
puts find_next_square(155)
puts find_next_square(342_786_627)

# Answer from ed
(answer % 1).zero?