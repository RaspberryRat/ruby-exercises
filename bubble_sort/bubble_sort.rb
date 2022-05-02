def bubble_sort(num_array)
i = 0
j = 1
flag = 0 #loop stops when this is set to 1

  until flag == 1 do
    #this comparison is needed to check if the num_array is the same after a loop
    comparison_array = Array.new(num_array)
    while j < num_array.length
      if num_array[i] > num_array[j]
        num_array.insert(i,num_array.delete_at(j))
      end
      i += 1
      j += 1
      end
    if j == num_array.length
      if num_array == comparison_array
        flag = 1 #if the num_array is unchanged after a loop, sort is complete
        break
      else
        i = 0 #reset to start loop over
        j = 1
        next
      end
    end
  end
  print "This is your sorted array #{num_array}.\n"
end


array = [4,3,78,2,0,2]
bubble_sort(array)

array = [1039103, 12930, 1200, 123, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
bubble_sort(array)