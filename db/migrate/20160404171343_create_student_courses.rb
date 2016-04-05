class CreateStudentCourses < ActiveRecord::Migration
  def change
    create_table :student_courses do |t|
      t.integer :student_id
      t.integer :current_course_id
      t.string :lecture_day
      t.string :lecture_time
      t.string :string
      t.string :tutorial_day
      t.string :tutorial_time
      t.string :lab_day
      t.string :lab_time

      t.timestamps null: false
    end
  end
end
