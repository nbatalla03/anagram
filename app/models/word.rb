class Word < ActiveRecord::Base
  def self.anagrams(test_word) # returns an array of word objects
    self.where(count: test_word.length).select do |word_object|
      word_object.name.chars.sort.join == test_word.chars.sort.join
    end
  end
end
