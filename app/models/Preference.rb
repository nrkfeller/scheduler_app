class Preference
  MAX_CREDIT = 15.0
  MIN_CREDIT = 1.5
  attr_accessor :day, :time, :credits
  def initialize(day, time, credits)
    @day = {monday: false, tuesday: false, wednesday: false, thrusday: false, friday: false}
    update_day(day)
    @time = {no_morning: false, no_evening: false, no_afternoon: false}
    update_time(time)
    @credits = validate_credit(credits.to_f)
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
    unless time == "all"
      time.each do |time_option|
        @time[time_option.downcase.split(" ").join("_").to_sym] = true
      end
    end
  end

  def validate_credit(credit)
    return MAX_CREDIT if credit >= MAX_CREDIT
    return MIN_CREDIT if credit <= MIN_CREDIT
    return credit - credit%0.5
  end
end
