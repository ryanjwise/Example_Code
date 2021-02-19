nl = "\n------ New Section ------\n\n"

# Comparison Methods
puts 1 > 2 #false
puts 1 < 2 #true

puts 5 >= 5 #true
puts 5 <= 4 #false

puts 1 == 1 #equal
puts 2 != 1 #not equal

puts 'cat' < 'dog' #true
# assesses by alphabetical unicode
# Capitals then lowercase. i.e. Z < a would equal true

puts nl

# Basic Branching
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Ryan'
  puts 'What a lovely name!'
end

# True/False
puts 'I am a fortune-teller.  Tell me your name:'
name = gets.chomp
if name == 'Ryan'
  puts 'I see great things in your future.'
else
  puts 'Your future is... Oh my!  Look at the time!'
  puts 'I really have to go, sorry!'
end

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end

puts nl

#Looping
command = ''

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'
puts

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end

puts nl

iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )

