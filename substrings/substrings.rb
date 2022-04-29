# method accept two arguments, first argument is a string, second argument is the dictionary
#split string into array
# compare first index position against dictionary, if match found, add to hash, increase hash +1
# at end of dictionary, loop back and then do index + 1 and compare against dictionary again
#after hit length of string array, need to now move to index position 1 and repeat loop


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  str_array = string.split('')
  if str_array.delete(' ') == nil
    str_array
  else 
    str_array.delete(" ")
  end
  p str_array
end

substrings("Hello", dictionary)
substrings("spa a a a ", dictionary )