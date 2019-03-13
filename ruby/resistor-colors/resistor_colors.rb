class ResistorColors
  def self.value(arr)
    arr.inject('') do |sum, value|
      sum << COLOR_VALUES[value.to_sym].to_s
    end.to_i
  end

  private

  COLOR_VALUES = {
    'black':  0,
    'brown':  1,
    'red':    2,
    'orange': 3,
    'yellow': 4,
    'green':  5,
    'blue':   6,
    'violet': 7,
    'grey':   8,
    'white':  9
  }
end
