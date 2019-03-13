class Integer
  def to_roman
    eyes = to_eyes(self)
    ROMAN.each do |arabic, roman|
      eyes.gsub!(to_eyes(arabic), roman)
    end
    eyes
  end

  private

  ROMAN = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def to_eyes(arabic_number)
    (1..arabic_number).map do |number|
      'I'
    end.join
  end
end
