require 'pry'

class ListOps
  def self.arrays(array)
    array.length
  end

  def self.reverser(array)
    array.reverse
  end

  def self.concatter(array1, array2)
    array1 + array2
  end

  def self.mapper(array)
    array if !block_given?
    array.map do |element|
      yield(element)
    end
  end

  def self.filterer(array)
    array if !block_given?
    array.select do |element|
      yield(element)
    end
  end

  def self.sum_reducer(array)
    array.sum
  end

  def self.factorial_reducer(array)
    array.reduce(1) {|factorial, element| factorial * element}
  end
end
