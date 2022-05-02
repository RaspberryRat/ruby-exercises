#require "pry-byebug"
def bubble_sort(num_array)
i = 0
j = 1
flag = 0

  until flag == 1 do
    p num_array
    
    comparison_array = Array.new(num_array)
    puts "This is the comparison#{comparison_array}"
    while j < num_array.length
      #
      if num_array[i] > num_array[j]
        puts "num_array i is #{i} = #{num_array[i]}"
        puts "num_array j is #{j} = #{num_array[j]}"
        p "Before new insert #{num_array}"
        num_array.insert(i,num_array.delete_at(j))
        p "After insert = #{num_array}"
        num_array
      end
      i += 1
      j += 1
      puts "j = #{j}"
      end
    
    if j == num_array.length
      if num_array == comparison_array
        flag = 1
        break
      else
        i = 0
        j = 1
        next
      end
    end
  end
  print "This is your sorted array #{num_array}.\n"
end


array = [4,3,78,2,0,2]
bubble_sort(array)