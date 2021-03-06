module Words
  extend self

  def count(str)
    new_hash = str.downcase.delete('^a-z ').split.group_by { |word| word }.map { |key, value| new_hash.store(key, value.count) }
  end
end
