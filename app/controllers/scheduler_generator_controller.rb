require "SchedulerGenerator.rb"
class SchedulerGeneratorController < ApplicationController
  def preference_generator

    @preference = Preference.new(params[:days], params[:time], params[:credit])
    @student = current_student
    current_courses_available = SchedulerGenerator.preference_generator(@student, @preference)
    course_hash = Hash.new
    current_courses_available.each do |current_courses|
      course_name = current_courses[0].get_course_id
      course_hash[course_name] = current_courses.map do |course|
        course_info = Hash.new
        course_info["location"] = course.location
        course_info["professor"] = course.professor
        course_info["lecture_info"] = course.get_lecture_info
        course_info["tutorial_info"] = course.get_tutorial_info
        course_info["lab_info"] = course.get_lab_info
        course_info
      end
    end
    byebug
    render json: course_hash
  end
end
