
puts "What time is it?"
hour = gets.chomp.to_i

case hour
when (7...12)
    puts "Good morning!"
when 12
    puts "Lunchtime"
when (13...19) # 13,14,15,16,17,18 - But not 19
    puts "Afternoon blues"
when 19, 20
    puts "Dinnertime"
when (0...7), (20...24)
    puts "Sleepy time"
else
    puts "That is not correct 24hr time!"
end