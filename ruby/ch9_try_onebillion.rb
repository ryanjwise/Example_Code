puts
my_birthday = Time.mktime(1990,12,2,9,38)
puts  my_birthday + 1000000000

puts
puts
test_birthday = Time.mktime(1990,12,2)
time_elapsed  = Time.new - test_birthday

seconds = 1
minute  = seconds*60
hour    = minute*60
day     = hour*24

years =  (time_elapsed/day/365).floor(2)
puts years.to_s + " years old"
puts "SPANK! "*years