class Anagram

  def initialize(string)
    @string = string
  end

  def match(array)
    anagrams = []
    array.each do |word|
      temp_string = @string.downcase.chars
      next if word.length != temp_string.length || word.downcase == @string.downcase
      anagrams << word if temp_string.sort == word.downcase.chars.sort
    end
    anagrams
  end
end
