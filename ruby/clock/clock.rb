require 'pry'

class Clock
  def initialize(time)
    @time = time
    @hour = 0
    @minute = 0
  end

  def to_s
    set_time(time)
    @hour.to_s.rjust(2, '0') + ':' + @minute.to_s.rjust(2, '0')
  end

  private

  def set_time(time)
    binding.pry
  end

  def set_hour(time)
    if @time[:hour]
      @hour += time[:hour] / 24
      @hour = time[:hour] % 24
    else
      @hour = 0
    end
  end

  def set_min(time)
    overflow = @time[:minute] / 60
    if time[:minute]
      @hour += time[:minute] / 60
      @minute = time[:minute] % 60
    else
      @minute = 0
    end
    set_hour(overflow)
  end

end
