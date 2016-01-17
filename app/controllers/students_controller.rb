class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = 'Welcome to my page'
      redirect_to :root
    else
      @student.errors.to_hash.each do |field, error|
        instance_variable_set('@' + field.to_s + '_error', error)
      end
      render 'new'
    end
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :student_id,:email, :department,:password, :password_confirmation)
    end
end
