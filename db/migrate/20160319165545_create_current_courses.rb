class CreateCurrentCourses < ActiveRecord::Migration
  def change
    create_table :current_courses do |t|
      t.integer :course_datum_id
      t.string :year
      t.string :semester
      t.string :professor
      t.string :lecture_day
      t.string :lecture_time
      t.string :tutorial_day
      t.string :tutorial_time
      t.string :lab_day
      t.string :lab_time

      t.timestamps null: false
    end
  end
end
