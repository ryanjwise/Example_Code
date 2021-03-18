arr                         # []

arr = Array.new             # []
[]                          # []

arr = []                    # []
arr = Array.new(4)          # [nil, nil, nil, nil]
arr = Array.new(4, 'hello') # ["hello", "hello", "hello", "hello"]
arr = [1,2,3,4]             # [1, 2, 3, 4]
arr.push(5)                 # [1, 2, 3, 4, 5]
arr << 6                    # [1, 2, 3, 4, 5, 6]
arr << 6,7,8                # Syntax Error
arr.push(5,6)               # 

arr[0]
arr.delete(5)               # Deletes all 5
arr.unshift(0)              # prepends 0

# Methods
arr.first
arr.last
arr.last(x)                 # Returns the last x array items
arr.length
arr.include?(x)             # Checks if x exists in array
arr.sample                  # Take a random element from the array
arr.count(x)                # Returns the number of times x appears in an arr
arr.clone                   # Creates a new instance of the array and assigns a new pointer
# Copying an array needs to use a .clone method or it will point to the same memory location rather than a new array.

new_arr = [3, 4, 5, 6, 2, 3, 5, 4, 5, 7]
new_arr.sort  # [2, 3, 3, 4, 4, 5, 5, 5, 6, 7]
new_arr.sort! # Will perform the sort method and aply it to the original argument

