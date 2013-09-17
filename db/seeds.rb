# require_relative '../app/words'

# File.open("../app/words", 'r') do |word|
#   p word
# end


# words = File.open("words.txt", 'r')

# words.each do |word|
#   Word.create(name: word)
# end

# File.open("words.txt", 'r') do |word|
#   # Word.create(name: word)
#   puts word
# end

File.open(File.expand_path('../words.txt', __FILE__)).each_line do |line|
  word_length = line.chomp.length
  Word.create(name: line.chomp, count: word_length)
end
