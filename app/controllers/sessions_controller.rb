class SessionsController < ApplicationController
  def new
  end

  def create
    @student = Student.find_by_email(student_params[:email])
    if @student && @student.authenticate(student_params[:password])
      sign_in @student
      redirect_to :root
    else
      render 'new'
    end

  end

  def destroy
    sign_out
    redirect_to root_path
  end




  private
    def student_params
      params.require(:session).permit(:email, :password)
    end
end
