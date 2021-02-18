#Initialise variables
next_word = ''
words = []
array_size = 0

#Output instructions and get first word
puts "Sorts input words alphabetically"
puts "Input word one at a time and push enter after each. \nWhen you are done, just hit enter without making an entry."
next_word = gets.chomp

#Get remainder of words
while next_word.length > 0
    words.push next_word
    next_word = gets.chomp
end

# Sort array using sort method
# words.sort!

#Sort array without sort method.
#get array size
array_size = words.length

#sort array (Array size may be reduced, not sure once for every is required)
(array_size).times { puts array_size
    (array_size-1).times { |i| 
        if words[i] > words[i+1]
            words[i], words[i+1] = words[i+1], words[i]
        end
    }
}

puts
puts words