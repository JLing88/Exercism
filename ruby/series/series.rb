class Series
  attr_reader :string_array

  def initialize(string)
    @string_array = string.chars
  end

  def slices(slice_length)
    unless slice_length <= @string_array.length
      raise ArgumentError.new("Slice length longer than input")
    end
    slices = []
    @string_array.each_cons(slice_length) do |section|
      slices << section.join
    end
    slices
  end
end
