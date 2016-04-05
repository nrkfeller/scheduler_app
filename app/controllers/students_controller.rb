class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      sign_in @student
      flash[:success] = 'Welcome to my page'
      redirect_to @student
    else
      @student.errors.to_hash.each do |field, error|
        instance_variable_set('@' + field.to_s + '_errors', error)
      end
      render action: 'new'

    end
  end


  def show
    @student = current_student
    @student_record = @student.get_record
    @department = "Software Engineering"
    @courses = @student.get_course_sequence
    @registered_courses = @student.get_student_courses

  end

  

  def registration
    @current_courses = CurrentCourse.all
  end


  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :student_id,:email, :department,:password, :password_confirmation)
    end
end
