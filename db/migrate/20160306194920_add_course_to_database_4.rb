class AddCourseToDatabase4 < ActiveRecord::Migration
  def change
    course = CourseDatum.where(title: "Software Engineering Project ").first
    course.num = 491
    course.save

  end
end
