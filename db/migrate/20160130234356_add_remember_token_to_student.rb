class AddRememberTokenToStudent < ActiveRecord::Migration
  def change
    Student.all.each{ |student| student.save(validate: false)}
  end
end
