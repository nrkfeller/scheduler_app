class CurrentCourse < ActiveRecord::Base

  def get_course_id
    course = CourseDatum.find_by_id(self.course_datum_id)
    return course.name + " " + "#{course.num}"
  end

  def get_lecture_info
    return "#{self.lecture_day} #{self.lecture_time}"
  end

  def get_tutorial_info
    if self.tutorial_day and self.tutorial_time
      info = ""
      tutorial_day = self.tutorial_day.split(" or ")
      tutorial_time = self.tutorial_time.split(" or ")
      i = 0
      while (not tutorial_day.empty?)
        info += "#{tutorial_day.pop()} - #{tutorial_time.pop()} ".html_safe
      end
      return info
    end
    return "No Tutorial"
  end
  def get_lab_info
    if self.lab_day and self.lab_time
      info = ""
      lab_day = self.lab_day.split(" or ")
      lab_time = self.lab_time.split(" or ")
      i = 0
      while (not lab_day.empty?)
        info += "#{lab_day.pop()} - #{lab_time.pop()} ".html_safe
      end
      return info
    end
    return "No Lab"
  end

  def meet_record?(record)
    record.each do |past_course|
      if past_course.course_id == self.course_datum_id and past_course.pass?
        return false
      end
    end
    preregs = CourseDatum.find_by_id(self.course_datum_id).get_prereg
    return true unless preregs
    preregs.each do |pre|
      if pre.kind_of?(Array)
        result = false
        pre.each do |op|
          result |= op.in_record?(record)
        end
        return false unless result
      else
        return false unless pre.in_record?(record)
      end
    end
    return true
  end
end
