def descending_order(n)
    str = ""
    arr = n.digits.sort!.reverse
    arr.each do |int|
        str << int.to_s
    end
    pp str.to_i
end

p descending_order(42145)

# Input: 42145 Output: 54421
# Input: 145263 Output: 654321
# Input: 123456789 Output: 987654321

# Solution
# def descending_order(n)
#     n.to_s.chars.sort.reverse.join.to_i
# end