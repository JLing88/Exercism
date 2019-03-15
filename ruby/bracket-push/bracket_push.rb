class Brackets
  def self.paired?(string)
    stack = []

    string.each_char do |char|
      if BRACKETS.has_key?(char)
        stack << char
      elsif BRACKETS.has_value?(char)
        return false unless BRACKETS[stack.pop] == char
      end
    end

    stack.empty?
  end

  private

  BRACKETS = {
    '[' => ']',
    '{' => '}',
    '(' => ')'
  }
end
