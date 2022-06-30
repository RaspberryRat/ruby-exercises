def caesar_cipher(string, cipher)
  chars = string.split('')
  newchars = chars.map() do |chars|
    code = chars.ord
    if code.between?(65,90)
      code = ((code - 65 + cipher) % 26) + 65
      code.chr
    elsif code.between?(97,122)
      code = ((code - 97 + cipher) % 26) + 97
      code.chr
    else 
      code.chr
    end
  end
  newchars.join('')
end

def is_integer(cipher)

  true if Integer(cipher) rescue false
end

def is_string(message)

  true if String(message) rescue false
end

begin 
  puts "Enter your message" 
  string = gets.chomp 
  cipher = gets.chomp.to_i
end until is_string(string) && is_integer(cipher) 
puts "Your coded message is:" 
  puts caesar_cipher(string, cipher.to_i) 
  puts "Press enter to run again, q to quit" 
#end until gets.chomp == 'q' 3`