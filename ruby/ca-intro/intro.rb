# Data Types
# Define what can be done with this data

# String

"Hello World"
'Hello World'
'Hello World'.object_id

# Float

2.0

# Integer

2

# Booleans

true
false

# Array
# Hashes
# nil

nil


# Symbols
# More lightweight than strings
# Will always be stored in the same memory location, unlike strings

:hello_world
:hello_world.object_id

# Variable assignment using 'duck typing'
eddie = 'Edward Deam'
harrison = 1

#IO

puts "Hello World"  # Prints value with a newline character after it
p "Hello World"     # Shows data
print 'hello world' # As puts but no newline character
pp 'hello world'    # ?

input = gets

puts input

# String Interpolation

puts "Hello #{input}, how are you?"

# Type Conversion
puts 1000.class
puts 1000.to_s
puts '1000'.to_i
puts '1000'.to_f

