if ARGV.include?('-h') || ARGV.include?('--help')
	puts "coin_flip will simulate flipping a coin the number of times specified."
	puts "You can specify a number of flips as an argument, or you will be prompted to enter a number."
	exit
elsif ARGV[0]
	number_of_flips = ARGV[0].to_i
else
	number_of_flips = 0	
end