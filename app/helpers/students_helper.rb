module StudentsHelper
  def render_sign_up_errors(errors)
    error_html = String.new + "<span style='color: red'>#{errors[0]}</span>"
    return error_html.html_safe
  end
end
