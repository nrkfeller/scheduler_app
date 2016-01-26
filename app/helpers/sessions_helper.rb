module SessionsHelper

  def sign_in(student)
    cookies.permanent[:remenber_token] = student.remember_token
    self.current_student = student
  end

  def current_student=(student)
    @current_student = student
  end

  def current_student
    @current_student || Student.find_by_remember_token(cookies[:remember_token])
  end

  def signed_in?
    !current_student.nil?
  end

  def sign_out
    self.current_student = nil
    cookies.delete(:remember_token)
  end
end
