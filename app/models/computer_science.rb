class ComputerScience < ActiveRecord::Base
  def get_course_info
    course = CourseDatum.where(id: self.course_id).last
    return {name: course.name, num: course.num, title: course.title, credit: course.credit, prereg: course.prereg}
  end


  def self.get_course_sequence
    courses = {}
    ComputerScience.all.each do |course|
      course_info = course.get_course_info
      if courses[course.course_group]
        courses[course.course_group] << course_info
      else
        courses[course.course_group] = [course_info]
      end
    end
    courses.each do |name, courses|
      courses.sort! {|first, second| first[:num] <=> second[:num]}
    end
    return courses
  end
end
