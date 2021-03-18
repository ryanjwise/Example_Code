def count_letters(input)
	letter_count = {}
	letter_count = {}
    input = input.chars
    input.uniq.each do |char|
		# If statement to be removed if whitespace to be counted
        if char != " "
            symbol = char.to_sym
			input.count(char)
			letter_count[symbol] = input.count(char)
		end
    end
	return letter_count
end

puts count_letters("Hello World")
puts count_letters("Thats The Ticket")
