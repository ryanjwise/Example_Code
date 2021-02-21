#Checking to see if a while loop example seen in book worked as read. Short answer: It does not.

x = 3
y = 0

while x
    puts x
    x -= 1
    y += 1
    puts
end

puts 
puts "results = "
puts x
puts y