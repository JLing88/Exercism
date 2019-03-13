require 'securerandom'

class Robot
  def initialize
    @name = ''
    set_name
  end

  def self.forget

  end

  def name
    @name
  end

  def reset
    @name = ''
    set_name
  end

  private

  def set_name
    2.times do
      @name << ('A'..'Z').to_a.shuffle.pop
    end
    3.times do
      @name << (0..9).to_a.shuffle.pop.to_s
    end
  end
end
