# Commenting

# Comment using #

# Multi lines comments
=begin

=end


# Variables

variable 

variable = 'hello'

# print to screen/terminal

puts 'hello'
print 
pp
p

# Short circuit logic

scl = 'ok' || 'hello'


# String

'ruby string'
"ruby string"

"hello #{5 + 5}"

# Numbers

5 # - Integer
6.0 # - float

# Boolean

true 
false

# Falsey

false
nil

# Data structures

# Arrays Hashes

# Hashes

my_hash = {}

my_hash2 = Hash.new

# Array

my_array = []

my_array2 = Array.new

# Method

def name_of_method(parameters)

end

# Control structures

# Selection / conditional flow

# If

if true 
  puts 'hello'
elsif false
  puts 'ok'
else
  puts 'else'
end

# If modifier

puts 'modifier' if true

# unless

unless false
  puts 'This is true'
else
  puts 'This is false'
end

# unless modifier

puts 'unless modifier' unless true

# Case

something = 1

case something
when 1
  puts 'hello'
when 2
  puts 'goodbye'
else
  puts 'else'
end

# Ternary Operator

tern_op = true ? 'hello' : 'goodbye'

# Control structures loop/Iterative

# while

while true 
  print 'money'
end

# while modifier

puts 'hi' while true

# until

until false
  print 'money'
end

# until modifier

puts 'until modifer' until false

# For

for i in 0..5
   puts i
end

# .each

ruby_array = [1,2,3,4,5]

ruby_array.each do |value|
  puts value
end

ruby_hash = { 
  one: 1,
  two: 2,
  three: 3
 }

 ruby_hash.each do |value,key|
  puts "#{key} = #{value}"
 end
 
# Loop do

loop do
  puts 'Infinte loop'
end

# next

counter = 0

while counter < 10
  if counter % 2 == 0
    next
  end
end

# break

loop do
  if true
    break
  end
end

# Error handling

begin
   puts 'Code with possible errors'
   raise StandardError
rescue Exception => e
   puts e.message
   retry
else
   puts 'This runs if no errors'
ensure
   puts 'This always runs'
end