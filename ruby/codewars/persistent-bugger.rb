def build_array(num)
    num.to_s.chars.map(&:to_i)
end

def multiply_array(arr)
    arr.inject(:*)
end

def persistence(n)
    count = 0
    loop do
        num_array =  build_array(n)
        if num_array.length == 1
            return count
        else
            n =  multiply_array(num_array)
            count += 1
        end
    end
end



puts persistence(39)    # Expected output: 3
puts persistence(4)     # Expected output: 0
puts persistence(25)    # Expected output: 2
puts persistence(999)   # Expected output: 4
puts persistence(444)   # Expected output: 3