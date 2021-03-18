#OLD Method

=begin
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
=end
def englishNumber number
    if number < 0  # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end
  
    numString = ''  # This is the string we will return.
  
    onesPlace = ['one',     'two',       'three',    'four',     'five',
                  'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                  'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                  'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
    # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.
    left  = number
    write = left/10000          # How many millions left to write out?
    left  = left - write*10000  # Subtract off those millions.
  
    if write > 0
      millions  = englishNumber write
      numString = numString + millions + ' million'
      if left > 0
          numString = numString + ' '
      end
    end
  
  
    write = left/1000          # How many thousands left to write out?
    left  = left - write*1000   # Subtract off those thousands.
  
    if write > 0
      # Now here's a really sly trick:
      thousands  = englishNumber write
      numString = numString + thousands + ' thousand'
    if left > 0
        numString = numString + ' '
      end
    end
  
    write = left/100          # How many hundreds left to write out?
    left  = left - write*100  # Subtract off those hundreds.
  
    if write > 0
      numString = numString + onesPlace[write-1] + ' hundred'
    if left > 0
      numString = numString + ' '
      end
    end
  
    write = left/10          # How many tens left to write out?
    left  = left - write*10  # Subtract off those tens.
    if write > 0
      if ((write == 1) and (left > 0))
        numString = numString + teenagers[left-1]
        left = 0
      else
        numString = numString + tensPlace[write-1]
      end
      if left > 0
        numString = numString + '-'
      end
    end
  
    write = left  # How many ones left to write out?
    left  = 0     # Subtract off those ones.
    if write > 0
      numString = numString + onesPlace[write-1]
    end
  
    return numString
end

def bottles_of_beer(start_num)
    num_bot = start_num

    while num_bot != 0
        bottles = englishNumber(num_bot)
        puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
        num_bot -= 1
        if num_bot == 0
            bottles = "No more"
        end
        puts "Take one down, pass it around, "
    end
    
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    bottles = englishNumber(start_num)
    puts "Go to the store, buy some more, #{bottles} bottles of beer on the wall!"
end

bottles_of_beer(999)