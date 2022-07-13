def bubble_sort(array)
sorted = false

  while !sorted
    sorted = true
    i = 0
    while i < array.length - 1
      if array[i] > array [i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
      i += 1
    end
  end
array
end


puts "Sort #1"
array = [4,3,78,2,0,2]
puts bubble_sort(array)

puts "\n\nSort #2"
array = [1039103, 12930, 1200, 123, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
puts bubble_sort(array)