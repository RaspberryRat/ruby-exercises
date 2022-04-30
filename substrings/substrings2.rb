dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
  word_list = Hash.new(0)
  string_downcase = string

  dictionary.each do |word|
    matches = string_downcase.scan(word).length
    puts matches
    word_list[word] = matches unless matches == 0
  end
  puts word_list
  
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)