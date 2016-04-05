require "SchedulerGenerator.rb"
require "Preference.rb"
class SchedulerGeneratorController < ApplicationController
  LIMIT = 20
  def preference_generator
    @preference = Preference.new(params[:days], params[:time], params[:number_of_class])
    @student = current_student
    current_courses_available = SchedulerGenerator.preference_generator(@student, @preference)
    course_option_list = Array.new
    current_courses_available.each do |courses|
      options = []
      courses.each do |course|
        options += course.generate_options
      end
      course_option_list.append(options)
    end
    combinations = course_option_list.combination(@preference.number_of_classes).to_a
    if combinations.size() > LIMIT
      combinations = combinations[0..LIMIT]
    end

    options = []
    combinations.each do |combination|
      option = SchedulerGenerator.generate_combination(SchedulerGenerator.get_combination(combination))[0]
      if option
        options << option
      end
    end
    render json: options
  end


  def select_a_schedule
    @student = current_student
    selected_courses = params["selected"]
    StudentCourse.destroy_all(student_id: @student.id)
    selected_courses.each do |key, value|
      StudentCourse.create(student_id: @student.id, current_course_id: value["course_id"].to_i, lecture_day: value["lecture"]["day"],
                            lecture_time: value["lecture"]["time"], tutorial_day: value["tutorial"]["day"],
                            tutorial_time: value["tutorial"]["time"], lab_day: value["lab"]["day"], lab_time: value["lab"]["time"])
    end
    redirect_to student_url(@student.id)
  end

  def student_registered_courses

    @student = current_student
    @registered_courses = @student.get_student_courses
    render json: @registered_courses
  end
end
