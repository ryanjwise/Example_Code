def delete_nth(order,max_e)
    return_arr = []
    unique = order.uniq
    unique.each do |num|
        max_e.times do
            if order.include?(num)
                order.delete_at(order.find_index(num))
                return_arr << num
            end
        end
    end
    pp return_arr
end

# Above solution works, however does not maintain the original order of the items
pp delete_nth([20,37,20,21], 1)# [20,37,21], # "From array [20,37,20,21],1 you get")
pp delete_nth([1,1,3,3,7,2,2,2,2], 3) # [1, 1, 3, 3, 7, 2, 2, 2] # "From array [1,1,3,3,7,2,2,2,2],3 you get")


# Solution:
# def delete_nth(order, max_e)
#     occurrences = Hash.new(0)
#     order.reject { |item| (occurrences[item] += 1) > max_e }
# end