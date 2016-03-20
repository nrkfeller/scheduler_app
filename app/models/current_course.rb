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
end
