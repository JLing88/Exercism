class Isogram
  def self.isogram?(input)
    input.gsub!(/\W/, '')
    input.downcase.chars.uniq == input.downcase.chars
  end
end
