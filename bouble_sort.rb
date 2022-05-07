def bouble_sort(array)
  len = array.count

  (0...len).each do |i|
    swapped = false
    (i+1...len).each do |j|
      if array[i] > array[j]
        array[i], array[j] = array[j], array[i]
        swapped = true
      end
    end
    break if !swapped
  end
  array
end

p bouble_sort([13, 8, 3, 1, 11, 15, 2])
p bouble_sort([8, 14, 2, 7, 6, 3, 10, 9, 5, 11, 4, 1, 20])
