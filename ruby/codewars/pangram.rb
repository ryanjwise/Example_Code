# Create a method that returns true if a passed string is a pangram (Contains the set of all letters in the alphabet.)
require 'set'

def pangram?(string)
  string.gsub(/[^A-Za-z]/, '').downcase.chars.to_set.count == 26
end

pp pangram?('The quick brown fox jumps over the lazy dog.')
