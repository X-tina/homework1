module Anagram
  extend self

  def anagrams
    str = ["rats", "What", "star", "thaw", "Tars"]
    #str1 = str.split
  
    str_word = str.map { |word| word.split("") }
    puts str_word
    str_letter = str_word.select { |letter| ("a".."z").include?(letter)}
    puts str_letter

    #p(str_letter == str_letter.sort)
  end
end


