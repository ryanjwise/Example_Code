# Loop methods
# counter = 1
# Loop While condition is met
# while counter <= 10
#     puts counter
#     counter += 2
# end

# Loop until condition is met
# until counter > 10
#     puts counter
#     counter += 1
# end

# Loop forever, useful for wrapping applications
# loop do
#     puts counter
#     counter += 1
# end


# Iterators
# Do Loop
# arr = ('a'..'z').to_a

# Run through the array, and print each item
# arr.each do |letter|
#     puts letter
# end

# Don't use for loops in ruby!
# They are a depreciated feature..

# hash = {
#     name: 'Spongebob',
#     house: 'Pineapple',
#     best_friend: 'Patrick'
# }

# Print each key value pair
# hash.each do | key, value |
#     puts "#{key} is #{value}"
# end

# Create a new, modified array
# arr = ('a'..'z').to_a
# arr2 = arr.map do |char|
#     char + '1'
# end

# puts arr2

# Map an array from a hash
# hash2 = hash.map do | key, value |
#     value + ' cool'
# end

# pp hash2

# Select only string type from the original array and apply to a new array
# arr = [1, 'daniel', 3.0, 'ask']
# arr2 = arr.select do | data |
#     data.class == String   
# end 
    
# pp arr2

hash = {
    name: 'Spongebob',
    house: 'Pineapple',
    best_friend: 'Patrick'
}

# Create a new hash based on selection criteria
hash2 = hash.select do |key, value |
    key.length > 4 && value.length > 6
end

pp hash2