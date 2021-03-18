days_per_year = 365
hours_per_year = days_per_year * 24
puts "There are #{hours_per_year} Hours in a year (Assuming #{days_per_year} days in a year)"
minutes_per_year = hours_per_year * 60
seconds_per_year = minutes_per_year *60
minutes_per_decade = minutes_per_year *10
puts "That means there are #{minutes_per_decade} minutes in a decade"
age_in_senconds = seconds_per_year * 30
puts "If I were exactly 30, that means I am #{age_in_senconds} seconds old"
puts
puts "Working backwards, if somebody is 1403 million seconds old, then they are:"

puts (((1403000000/60)/60)/24)/days_per_year