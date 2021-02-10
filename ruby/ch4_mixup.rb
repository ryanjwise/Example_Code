np = "\n-----New_Section-----\n\n"

#Conversions
var1 = 2
var2 = '5'
#To String
puts var1.to_s + var2
# To Integer
puts var1 + var2.to_i
puts np

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts np

#puts stand for 'put string' and passes its content to .to_s before printing it
puts 20
puts 20.to_s
puts '20'
puts np

puts gets
puts np

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'
puts np

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'