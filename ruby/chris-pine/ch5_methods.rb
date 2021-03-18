nl = "\n------ New Section ------\n\n"

puts 'hello ' .+ 'world'
puts (10 .* 9) .+ 9

puts nl

iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

puts nl

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
# Reverse doesn't reverse the original string, rather creates a new backwards version of it, whether you store it or not.

puts nl

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + 
    ' characters in your name, ' + name + '?'

puts nl

letters = 'aAbBcCdDeE'
puts letters.upcase     #AABBCCDDEE
puts letters.downcase   #aabbccddee
puts letters.swapcase   #AaBbCcDdEe
puts letters.capitalize #Aabbccddee
puts ' a'.capitalize    # a
puts 'a'.capitalize     #A
puts letters            #aAbBcCdDeE

puts nl

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))

puts nl

lineWidth = 40
str = '--> text <--'
puts str
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

puts nl

puts "WHAT THE HELL DO YOU WANT??"
demand = gets.chomp.to_s
puts "WHADDAYA MEAN #{demand.upcase}?!?  YOU'RE FIRED!!"

puts nl

lineWidth = 50
ch = "Chapter "
p = "page "

puts "Table of Contents".center(lineWidth)
puts
puts
puts "#{ch}1: Numbers".ljust(lineWidth/2)   + "#{p}1".rjust(lineWidth/2)
puts "#{ch}2: Letters".ljust(lineWidth/2)   + "#{p}72".rjust(lineWidth/2)
puts "#{ch}3: Variables".ljust(lineWidth/2) + "#{p}118".rjust(lineWidth/2)

puts nl

puts 5**2   #expontential
puts 5**0.5 #Sqr-root
puts 7/3    
puts 7%3    #modulus
puts 365%7  #modulus

puts nl

puts((5-2).abs) #Returns the absolute value of a number.
puts((2-5).abs) #Returns the absolute value of a number. 

puts nl

puts rand       #Returns a float between 0 and 1
puts rand
puts rand
puts(rand(100)) #Multiplies float by 100 and returns the floor
puts(rand(100))
puts(rand(100))
puts(rand(1))   #Will always return 0
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')

puts nl

srand 1776      #Randomiser 'seed'
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776      #Randomiser 'seed'
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
srand 1776
puts rand
puts rand
puts rand
puts rand
srand 1776
puts rand
puts rand
puts rand
puts rand

srand 0 #Sets the seed to a random number based on current time and hardware hash.

puts nl

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)