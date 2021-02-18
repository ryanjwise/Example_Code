#Global Variable
lineWidth = 50

#Local Print Variables
ch = "Chapter "
p = "page "


puts "Table of Contents".center(lineWidth)
puts
puts
puts "#{ch}1: Numbers".ljust(lineWidth/2)   + "#{p}1".rjust(lineWidth/2)
puts "#{ch}2: Letters".ljust(lineWidth/2)   + "#{p}72".rjust(lineWidth/2)
puts "#{ch}3: Variables".ljust(lineWidth/2) + "#{p}118".rjust(lineWidth/2)
puts


#As above, but built using an array
chapter_info = [[1, "Numbers", 1], [2, "Letters", 72], [3, "Variables", 118]]

puts "Table of Contents".center(lineWidth)
puts
puts
chapter_info.each { |x| 
    puts "Chapter#{x[0]}: #{x[1]}".ljust(lineWidth/2) + "page: #{x[2]}".rjust(lineWidth/2)
}