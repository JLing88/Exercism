module Hamming

  def self.compute(dna, rna)
    if dna.length != rna.length
      raise ArgumentError.new("Invalid input")
    end
    hamming_distance = 0
    dna.length.times do |index|
      if dna[index] != rna[index]
        hamming_distance += 1
      end
    end
    hamming_distance
  end

end
