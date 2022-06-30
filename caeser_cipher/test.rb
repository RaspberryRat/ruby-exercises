require "pry-byebug"
def caesar_cipher(message, cipher)
  chars = message.split('')
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

def is_integer(string)
  binding.pry

  true if Integer(string) rescue false
end

def is_message(message)
  binding.pry
  
  true if String(message) rescue false
end

begin 
  puts "Enter your message"
  message = gets.chomp
  puts "Enter your cipher"
  cipher = gets.chomp.to_i
  binding.pry
end until is_message(message) && is_integer(cipher)
puts "Your coded message is:"
puts caesar_cipher(message, cipher.to_i)
puts "Press enter to run again, q to quit"
puts "Press enter to run again, q to quit"
end until gets.chomp == 'q'