class SchedulerGenerator
  def self.preference_generator(student, preferece)
    student_record = student.get_record
    extracted_current_courses = get_extracted_current_courses(student.department)
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
  def self.get_preferred_courses(current_courses)
    
  end
end
