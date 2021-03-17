#### Defining Mehtods ####
# def method_name
#     puts "hello"
# end

# method_name # Invoke/Call the method
# Remember variable scope


#### Return Methods ####
# def method_with_return
#     result = 2 + 2
#     return result
#     result = 4 + 4 # Will be terminated by return before reaching this line
# end

# A return does not need to be specified, if one is not hit the last thing called by the method will be returnes.

#### Methods with parameters ####
# def sum (param_1, param_2)
#     puts param_1 + param_2
# end

# sum(1,2)

## With Defaults ##
# def sum2 (param_1 = 1, param_2 = 2, param_3)
#     puts param_1 + param_2 + param_3
# end

# sum2(3,3,3)
# sum2(3)
# sum2(2,3)

## Named Arguments ##
# def person(name: 'unnamed', last_name: 'no_lastname')
#     puts "Hi! #{name} #{last_name}"
# end

# person()
# person(last_name: 'wise')
# person(name:'ryan')
# person(name:'ryan', last_name: 'wise')

## Mixed Arguments ##
# def person(status, name: 'unnamed', last_name: 'no_lastname')
#     puts "Hi! #{status} #{name} #{last_name}"
# end

# # person() falls over
# person(name:'ryan', last_name: 'wise')
# person('married')

# ## Spread Methods ##
# arr = ('a'..'t').to_a

# first_letter, the_rest = arr

# puts first_letter
# puts
# pp the_rest
# puts "------"

# first_letter, *the_rest = arr

# puts first_letter
# puts
# pp the_rest
# puts "------"

# first_letter, second_letter, *the_rest = arr

# puts first_letter
# puts
# puts second_letter
# pp the_rest
# puts "------"

def music_artist(name, *other_info)
    pp name
    pp other_info
end

music_artist('Yannick', 'Grammy Nominee', 'Cool Dude', 'Random Stuff', 6)