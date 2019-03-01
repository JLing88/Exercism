class Acronym
  def self.abbreviate(string)
    string.gsub(/-/, ' ').split(' ').map do |word|
      word[0].upcase
    end.join.to_s
  end
end
