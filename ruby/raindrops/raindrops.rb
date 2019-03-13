class Raindrops

  attr_reader :words

  @words = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(int)
    message = ''

    @words.each do |num, word|
      if (int % num).zero?
        message << word
      end
    end
    message.empty? ? int.to_s : message
  end

end
