def unique_chars?(str)
    str.chars.each_with_index  do |letter, i|
        if str.count(letter) > 1
            return false
        end
    end
    return true
end



puts unique_chars?("abcdef") # Should return true
puts unique_chars?("++-")    # Should return false
puts unique_chars?("  nAa")  # Should return false
puts unique_chars?("aba")    # Should return false

# Best answer
def unique_chars2?(str)
    str.chars == str.chars.uniq
end

puts unique_chars2?("abcdef") # Should return true
puts unique_chars2?("++-")    # Should return false
puts unique_chars2?("  nAa")  # Should return false
puts unique_chars2?("aba")    # Should return false
