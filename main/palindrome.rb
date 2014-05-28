module Palindrome
  extend self

  def palindrome?(str)
    str.clone.downcase.delete('^a-z').eql?(str.reverse)
  end
end
