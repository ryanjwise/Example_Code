leap_years = 0
start_year = 0
end_year = 0

puts "Enter a start year"
start_year = gets.chomp.to_i
puts "Enter a end year"
end_year = gets.chomp.to_i

puts "\n"
puts "Start year: #{start_year}"
puts "End year: #{end_year}"


while start_year <= end_year
    if start_year%100 != 0 or start_year%400 == 0
        if start_year%4 == 0
            leap_years += 1
            puts start_year
        end
    end

    start_year += 1
end

puts "There are #{leap_years} leap years in total between these dates (Inclusive)."