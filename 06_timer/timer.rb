class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = get_time_string
  end

  def seconds=(secs)
    @seconds = secs
    @time_string = get_time_string
    return @seconds
  end

  def get_time_string
    mins = @seconds / 60
    secs = @seconds % 60
    hrs = mins / 60
    mins = mins % 60
    hrs = padded(hrs)
    mins = padded(mins)
    secs = padded(secs)
    return "#{hrs}:#{mins}:#{secs}"
  end

  def padded(num)
    num = "0"+num.to_s if num < 10
    return num
  end
end