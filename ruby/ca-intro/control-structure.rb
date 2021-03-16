# puts 'Enter name:'
# name = gets.strip.downcase


# if name == 'mandalorian'
#     puts 'This is the way'
# elsif name == 'baby yoda'
#     puts 'The way is this'
# elsif name == 'luke skywalker'
#     puts 'may the force be with you'
# else
#     puts 'This is not the way'
# end

# puts name == 'zelda'

# <= >= < > ==

puts 'enter a number'
# num = nil

# if !num
# end

# if not num
# end

# unless num
# end

num = gets.to_i

case num
when 1
    puts "You wrote 1"
when 2
    puts "You wrote 2"
when 3
    puts "You wrote 3"
else
    puts 'Invalid selection'
end

case num 
when 1..4
    puts 'number is between one and four`'
when 4...6
    puts 'number is between four and six`'
else
    puts num
end

if (1..4).include?(num)
    puts "Hooray"
end