nl = "\n-----New_Section-----\n\n"

colorArray = []  # same as Array.new
colorHash  = {}  # same as Hash.new

colorArray[0]         = 'red'
colorArray[1]         = 'green'
colorArray[2]         = 'blue'
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end

# Output
# red
# green
# blue
# strings:  red
# numbers:  green
# keywords:  blue

puts nl

weirdHash = {}

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'

puts nl

# Extending Classes!
# Refer to the previous chapter for utilisation.
class Integer
  def to_eng
    if self == 5 # Here, self is used to define the integer passed to the method.
      'five'
    else
      'fifty-eight'
    end
  end
end

# I'd better test on a couple of numbers...
puts 5.to_eng
puts 58.to_eng

puts nl

# class Die
#   def roll
#     rand(1..6)
#   end
# end

# # Let's make a couple of dice...
# dice = [Die.new, Die.new]

# # ...and roll them.
# dice.each do |die|
#   puts die.roll
# end

puts nl

# class Die2
#   def roll
#     @numberShowing = rand(1..6)
#   end

#   def showing
#     @numberShowing
#   end
# end

# die = Die2.new
# die.roll
# puts die.showing
# puts die.showing
# die.roll
# puts die.showing
# puts die.showing

puts nl

class Die
  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

puts Die.new.showing
