require "SchedulerGenerator.rb"
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
end
