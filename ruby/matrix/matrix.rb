
class Matrix

  attr_reader :matrix

  def initialize(matrix_string)
    @matrix = matrix_string.split("\n").map do |str|
      str.split(' ')
    end
  end

  def rows
    @matrix.map do |row|
      row.map {|number| number.to_i}
    end
  end

  def columns
    @matrix.transpose.map do |column|
      column.map {|element| element.to_i}
    end
  end
end
