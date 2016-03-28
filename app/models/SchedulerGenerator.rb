class SchedulerGenerator

  def generator_possible_schedules(current_courses, max_credit)

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

    if course.tutorial_day
      tutorial_day = course.tutorial_day.split(" or ").map{ |day| preference.day[day.downcase.to_sym]}
      tutorial_time = course.tutorial_time.split(" or ").map{ |time| preference.time[translate_time(time.split(" - ").last).to_sym]}
      for i in 0..(tutorial_day.size() -1)
        unless tutorial_day[i] and tutorial_time[i]
          return false
        end
      end
    end
    if course.lab_day
      lab_day = course.lab_day.split(" or ").map{ |day| preference.day[day.downcase.to_sym]}
      lab_time = course.lab_time.split(" or ").map{ |time| preference.time[translate_time(time.split(" - ").last).to_sym]}
      for i in 0..(lab_day.size() -1)
        unless lab_day[i] and lab_time[i]
          return false
        end
      end
    end
    return true
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
