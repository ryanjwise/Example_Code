puts "How old are you?"
age = gets.to_i

puts "Are you a citizen?"
citizen = gets.downcase.chars.first

puts citizen == 'y' && age >= 18 ? "You are eligible to vote!" : "You are ineligible to vote!"
# Could be placed in a loop to catch bad answer (non yes/no)