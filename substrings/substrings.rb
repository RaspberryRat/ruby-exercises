
# method accept two arguments, first argument is a string, second argument is the dictionary
#split string into array
# compare first index position against dictionary, if match found, add to hash, increase hash +1
# at end of dictionary, loop back and then do index + 1 and compare against dictionary again
#after hit length of string array, need to now move to index position 1 and repeat loop


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  
  str_array = string.downcase.split('')
  if str_array.delete(' ') == nil
    str_array
  else 
    str_array.delete(" ")
  end
  i = 0
  j = 0
 
  word_list = Hash.new(0)
  while j < str_array.length
    #puts "Loop #{z}"
    z +=1
    #puts "str_array length = #{str_array.length}"
    #puts "j = #{j} i = #{i}"
    word = str_array[j..i].join('')
    i += 1
    #puts "j = #{j} i = #{i}"
    if i == str_array.length
      i = 0
      j += 1
    end
    if dictionary.find {|w| w == word} == nil
      next
    else
      word_list[word] += 1
    end
    #puts "j = #{j} i = #{i}"
    
    end
    puts word_list
  end




substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)