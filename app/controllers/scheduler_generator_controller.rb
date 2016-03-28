require "SchedulerGenerator.rb"
class SchedulerGeneratorController < ApplicationController
  def preference_generator

    @preference = Preference.new(params[:days], params[:time], params[:credit])
    @student = current_student
    current_courses_available = SchedulerGenerator.preference_generator(@student, @preference)
    course_option_list = Array.new
    current_courses_available.each do |courses|
      course_option_list.append(courses.map {|course| course.generate_options})
    end
    byebug
    render json: course_hash
  end
end
