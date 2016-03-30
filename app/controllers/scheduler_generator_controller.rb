require "SchedulerGenerator.rb"
class SchedulerGeneratorController < ApplicationController
  LIMIT = 15
  def preference_generator
    @preference = Preference.new(params[:days], params[:time], params[:credit])
    @student = current_student
    current_courses_available = SchedulerGenerator.preference_generator(@student, @preference)
    course_option_list = Array.new
    current_courses_available.each do |courses|
      course_option_list.append(courses.map {|course| course.generate_options})
    end
    option1 = {option1: [course_option_list[0][0][0], course_option_list[1][0][0], course_option_list[2][0][0], course_option_list[3][0][0]]}
    render json: option1
  end
end
