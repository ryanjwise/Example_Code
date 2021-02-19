num_bot = 99

while num_bot != 0
    bottles = num_bot.to_s
    puts "#{bottles} bottles of beer on the wall, #{bottles} of beer."
    num_bot -= 1
    if num_bot == 0
        bottles = "No more"
    end
    puts "Take one down, pass it around, "
end

puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
puts "Got to the store, buy some more, 99 bottles of beer on the wall!"