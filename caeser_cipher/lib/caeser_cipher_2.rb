
def caesar_cipher(string, shift)
  shifted_string = ""
  string.each_char do |char|
    ordinal_char = char.ord
    # this is lower value for each uppercase or lowercase
    upper_or_lower = ordinal_char < 91 ? 65 : 97
    if (ordinal_char.between?(65, 90) || ordinal_char.between?(97, 122))
      shifted_letter =  (((ordinal_char - upper_or_lower + shift) % 26) + upper_or_lower).chr
      shifted_string += shifted_letter
    else
       shifted_string += char
    end
  end
  puts shifted_string
  shifted_string
end

caesar_cipher("hello!!!!", 3)

caesar_cipher("Why don't you come have a seat over here? Oh No Chris Hansen!!!!!!!", 74)

