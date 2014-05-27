module Palindrome
  extend self

  def palindrome?(str)
    #str = str.downcase.delete('^a-z')
    #str.eql?(str.reverse)
    str.downcase.delete('^a-z').eql?(str.reverse)
  end
end
