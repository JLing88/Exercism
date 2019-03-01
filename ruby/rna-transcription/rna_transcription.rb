class Complement
  def self.dna_to_rna
    {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
    }
  end

  def self.of_dna(dna_string)
    dna_string.split('').map do |dna|
      dna_to_rna[dna].to_s
    end.join
  end
end
