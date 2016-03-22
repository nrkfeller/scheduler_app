class SchedulerGeneratorController < ApplicationController
  def preference_generator
    @preference = Preference.new(params[:days], params[:time], params[:credit])
    @student = current_student
    @record = @student.get_record
    @current_courses = CurrentCourse.all
    @course_sequence = @student.get_course_sequence
  end
end
