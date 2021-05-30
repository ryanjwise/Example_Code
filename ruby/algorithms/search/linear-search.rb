def linear_search(array, search_item)
  array.each do |index|
    return index if array[index] == search_item
  end
  return -1
end


arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
key = 3
p linear_search(arr, key)
