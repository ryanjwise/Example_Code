odd_even = [[1, 3, 5, 7], [2, 4, 6, 8]]

# Pulling an array
odd_array  = odd_even[0]    # [1, 3, 5, 7]
even_array = odd_even[1]    # [2, 4, 6, 8]

#Pulling a specific value
odd_num    = odd_even[0][1] # 3 Takes item in position 1 from inner array at position 0
even_num   = odd_even[1][2] # 6 Takes item in position 2 from inner array at position 1

pp odd_array
pp even_array

pp odd_num
pp even_num