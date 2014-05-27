module Anagram
  extend self

  def anagrams(str)    
    str.split.group_by { |word| word.downcase.split("").sort }.values
  end
end


