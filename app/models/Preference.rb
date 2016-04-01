class Preference
  MAX_NUM = 6
  MIN_NUM = 1
  attr_accessor :day, :time, :number_of_classes
  def initialize(day, time, number_of_classes)
    @day = {monday: false, tuesday: false, wednesday: false, thrusday: false, friday: false}
    update_day(day)
    @time = {morning: false, evening: false, afternoon: false}
    update_time(time)
    @number_of_classes = validate_credit(number_of_classes.to_i)
  end

  def update_day(day)
    if day == "all"
      @day.each do |key, value|
        @day[key] = true
      end
    else
      day.each do |key|
        @day[key.downcase.to_sym] = true
      end
    end
  end

  def update_time(time)
    if time == "all"
      @time.keys.each do |key|
        @time[key] = true
      end
    else
      time.each do |time_option|
        @time[time_option.downcase.to_sym] = true
      end
    end
  end

  def validate_credit(num)
    return MAX_NUM if num >= MAX_NUM
    return MIN_NUM if num <= MIN_NUM
    return num
  end
end
