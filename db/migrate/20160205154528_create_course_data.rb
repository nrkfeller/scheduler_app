class CreateCourseData < ActiveRecord::Migration
  def change
    create_table :course_data do |t|
      t.string :name
      t.integer :num
      t.string :title
      t.integer :credit
      t.string :prereg

      t.timestamps null: false
    end
  end
end
