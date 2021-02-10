puts "Hello, whats you're first name?"
first_name = gets.chomp
puts "You're middle name?"
middle_name = gets.chomp
puts "And you're last name?"
last_name = gets.chomp

puts "So, you're name is #{first_name} #{middle_name} #{last_name}..."
puts "What kind of a rediculous name is #{middle_name} anyway?"
puts "So, #{first_name}, what's you're favourite number?"
num_fav = gets.chomp
num_sup = num_fav.to_i + 1

puts "#{num_fav}? ReallY??? Clearly #{num_sup} is a far superior number, it's bigger!"