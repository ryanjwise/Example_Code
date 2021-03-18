input
  .split('')
  .each_with_object(Hash.new(0)) do |char, letters| 
    letters[char] +=1 unless char == ' '
  end

  # Returns an object in the format specified, in this case Hash