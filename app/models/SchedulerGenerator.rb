class SchedulerGenerator
  def self.get_combination(options)
    result = [[]]
    options.each do |option|
      temp_result = []
      result.each do |group|

        option.each do |course|

          temp_result << (group + [course])
        end
      end
      result = temp_result
    end
    return result
  end


  def self.generate_combination(combinations)
    combinations.reject do |combination|
      is_group_conflict?(combination)
    end
  end

  def self.is_group_conflict?(group)
    i = 0
    while i < (group.size() - 1)
      j = i + 1
      while j < group.size()
        if is_conflict?(group[i], group[j])
          return true
        end
        j+=1
      end
      i+= 1
    end
    return false
  end
  def self.is_conflict?(course1, course2)
    course1.each do |key1, value1|
      course2.each do |key2, value2|
        if value1 and value2 and !(key1 == :course_id or key2 == :course_id) and !(key1 == :course_name or key2== :course_name)
          if same_day?(value1[:day], value2[:day])
            return true if conflict_time?(value1[:time], value2[:time])
          end
        end
      end
    end
    return false
  end


  def self.same_day?(day1, day2)
    day1 = day1.split(" - ")
    day2 = day2.split(" - ")
    day1.each do |day_1|
      day2.each do |day_2|
        if day_1 == day_2
          return true
        end
      end
    end
    return false
  end

  def self.conflict_time?(time1, time2)
    time1_stamp = get_time_stamp(time1)
    time2_stamp = get_time_stamp(time2)
    if time1_stamp[0] <= time2_stamp[0] and time1_stamp[1] > time2_stamp[0]
      return true
    end
    if time1_stamp[0] < time2_stamp[1] and time1_stamp[1] >= time2_stamp[1]
      return true
    end

    if time2_stamp[0] < time1_stamp[1] and time2_stamp[1] >= time1_stamp[1]
      return true
    end

    if time2_stamp[0] <= time1_stamp[0] and time2_stamp[1] > time1_stamp[0]
      return true
    end

    return false

  end

  def self.get_time_stamp(time)
    time = time.split(" - ")
    from = time[0]
    from_time = from[0..-3].split(":").join(".").to_f
    if from[-2..-1] == "PM"
      from_time += 12
    end

    to = time[1]

    to_time = to[0..-3].split(":").join(".").to_f
    if to[-2..-1] == "PM"
      if to_time < 12
        to_time += 12
      end
    end
    return [from_time, to_time]
  end

  def self.preference_generator(student, preference)
    student_record = student.student_records
    extracted_current_courses = get_extracted_current_courses(student.department)
    available_courses = Array.new
    extracted_current_courses.reject do |courses|
      courses = courses.reject{|course| not course_satisfy_preference?(preference, course)}
      available_courses << courses unless courses.empty?
    end
    return filter_by_student_record(available_courses, student_record)
  end

  def self.filter_by_student_record(current_courses,record)
    final_current_courses = Array.new
    current_courses.each do |courses|
      final_current_courses << courses if courses[0].meet_record?(record)
    end
    return final_current_courses
  end

  def self.get_extracted_current_courses(department)
    course_sequence = department.remove(" ").constantize.all
    current_courses = Array.new
    course_sequence.each do |course|
      current_course =  CourseDatum.find_by_id(course.course_id).current_courses.to_a
      current_courses << current_course unless current_course.empty?
    end
    return current_courses
  end
  def self.get_preferred_courses(preference, current_courses)

  end

  def self.course_satisfy_preference?(preference, course)

    unless course.location == "Online"
      course_day = course.lecture_day.split(" - ")
      course_end_time = translate_time(course.lecture_time.split(" - ").last)
      course_day.each do |day|
        unless preference.day[day.downcase.to_sym]
          return false
        end
      end
      unless preference.time[course_end_time.downcase.to_sym]
        return false
      end
    end
    tutorial_bool = false
    if course.tutorial_day
      tutorial_day = course.tutorial_day.split(" or ").map{ |day| preference.day[day.downcase.to_sym]}
      tutorial_time = course.tutorial_time.split(" or ").map{ |time| preference.time[translate_time(time.split(" - ").last).to_sym]}
      for i in 0..(tutorial_day.size() -1)
        if tutorial_day[i] and tutorial_time[i]
          tutorial_bool = true
        end
      end
    else
      tutorial_bool = true
    end
    lab_bool = false
    if course.lab_day
      lab_day = course.lab_day.split(" or ").map{ |day| preference.day[day.downcase.to_sym]}
      lab_time = course.lab_time.split(" or ").map{ |time| preference.time[translate_time(time.split(" - ").last).to_sym]}
      for i in 0..(lab_day.size() -1)
        unless lab_day[i] and lab_time[i]
          lab_bool = true
        end
      end
    else
      lab_bool = true
    end
    return (tutorial_bool and lab_bool)
  end

  def self.translate_time(time)
    if time.include?("AM")
      return "morning"
    else
      timeslot = /\d+:\d+/.match(time)[0].split(":")
      if timeslot[0].to_i < 1
        return "morning"
      elsif timeslot[0].to_i == 1
        if timeslot[1] == "00"
          return "morning"
        else
          return "afternoon"
        end
      elsif timeslot[0].to_i < 6
        return "afternoon"
      elsif timeslot[0].to_i == 6
        if timeslot[1] == "00"
          return "afternoon"
        else
          return "evening"
        end
      else
        return "evening"
      end
    end
  end
end
