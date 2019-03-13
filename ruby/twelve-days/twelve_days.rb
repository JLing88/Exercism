require 'pry'

class TwelveDays
  def self.song
    gifts = []
    output = ''
    12.times do |iteration|
      gifts.unshift(GIFTS[iteration+1])
      last_element = gifts.last.dup
      last_element.prepend(', and ') if iteration != 0
      last_element << '.'
      output += "On the #{DAYS[iteration+1]} day of Christmas my true love gave to me: #{iteration == 0 ? last_element : gifts[0..gifts.length-2].join(', ') + last_element}\n\n"
    end
    output
  end

  private

  DAYS = {
    1 => 'first',
    2 => 'second',
    3 => 'third',
    4 => 'fourth',
    5 => 'fifth',
    6 => 'sixth',
    7 => 'seventh',
    8 => 'eighth',
    9 => 'ninth',
    10 => 'tenth',
    11 => 'eleventh',
    12 => 'twelfth'
  }

  GIFTS = {
    1 => 'a Partridge in a Pear Tree',
    2 => 'two Turtle Doves',
    3 => 'three French Hens',
    4 => 'four Calling Birds',
    5 => 'five Gold Rings',
    6 => 'six Geese-a-Laying',
    7 => 'seven Swans-a-Swimming',
    8 => 'eight Maids-a-Milking',
    9 => 'nine Ladies Dancing',
    10 => 'ten Lords-a-Leaping',
    11 => 'eleven Pipers Piping',
    12 => 'twelve Drummers Drumming'
  }
end
