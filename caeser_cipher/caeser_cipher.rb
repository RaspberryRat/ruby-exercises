#require "pry-byebug"
alphabet = "abcdefghijklmnopqrstuvwxyz"
alphabet = alphabet.split('')
#alphabet_upcase = alphabet.upcase


#take in string,
#split into an array
#take letter - compare to alphabet string + the shift key and return new letter to new array


def caesar_cipher(string, shift)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet = alphabet.split('')
  array = string.split('')
  shifted_array = []

  array.each do |letter|
    index_shift = alphabet.find_index(letter) + shift

    if index_shift > 25
      index_shift %= 26
    end
    shifted_letter = alphabet[index_shift]
    shifted_array.push(shifted_letter)
    
  end
  puts shifted_array
end
  
caesar_cipher("z", 1)










#caesar_cipher("What a string!", 5)
#puts "Expected output: \"Bmfy f xywnsl!\""