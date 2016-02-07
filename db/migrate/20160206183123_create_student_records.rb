class CreateStudentRecords < ActiveRecord::Migration
  def change
    create_table :student_records do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :year
      t.string :semester
      t.string :grade
      t.string :status

      t.timestamps null: false
    end
  end
end
