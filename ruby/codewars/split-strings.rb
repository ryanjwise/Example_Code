def solution(str)
    num_chars = str.length
    is_even = num_chars.even?
    num_chars /= 2
    ret_string = []
    num_chars.times do |i|
      ret_string.push(str[(i*2), 2])
    end
    if !is_even
      ret_string.push(str[(num_chars*2), 1] + "_")
    end
    return ret_string
  end

# Tests
solution("abcdef")   # Expected answer ["ab", "cd", "ef"]
solution("abcdefg")  # Expected answer ["ab", "cd", "ef", "g_"]
solution("")         # Expected answer []

# Best Solutions
def solution(str)
    str << "_" if str.length % 2 != 0
    str.chars.each_slice(2).map(&:join)
end

def solution str
    (str + '_').scan /../
  end