require "SchedulerGenerator.rb"
class SchedulerGeneratorController < ApplicationController
  def preference_generator

    @preference = Preference.new(params[:days], params[:time], params[:credit])
    @student = current_student
    current_courses_available = SchedulerGenerator.preference_generator(@student, @preference)
    byebug
  end
end
