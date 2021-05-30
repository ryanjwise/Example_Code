def mergesort(array)
  def merge(left_sorted, right_sorted)
    res = []
    left = 0
    right = 0

    loop do
      break if (right >= right_sorted.length) && (left >= left_sorted.length)

      if (right >= right_sorted.length) || ((left < left_sorted.length) && (left_sorted[left] < right_sorted[right]))
        res << left_sorted[left]
        left += 1
      else
        res << right_sorted[right]
        right += 1
      end
    end

    res
  end

  def mergesort_iter(array_sliced)
    return array_sliced if array_sliced.length <= 1

    mid = array_sliced.length / 2 - 1
    left_sorted = mergesort_iter(array_sliced[0..mid])
    right_sorted = mergesort_iter(array_sliced[mid + 1..-1])
    merge(left_sorted, right_sorted)
  end

  mergesort_iter(array)
end

pp mergesort([1, 26, 45, 89, 52, 4, 1, 23, 58, 69, 6, 45, 86, 45, 12, 32])
