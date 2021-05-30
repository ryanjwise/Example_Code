# Bubble sort
# N^2 Exponential

def bubble_sort(array)
  array_size = array.length
  loop do |x|
    switched = false
    (array_size - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        switched = true
      end
    end
    break if not switched
  end
  array
end

pp bubble_sort [3,2,5,9,44,1,6]