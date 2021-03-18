class Die
  def roll
    rand(1..6)
  end
end

# Let's make a couple of dice...
dice = [Die.new, Die.new]

# ...and roll them.
dice.each do |die|
  puts die.roll
end
dice.each do |die|
  puts die.roll
end
dice.each do |die|
  puts die.roll
end
