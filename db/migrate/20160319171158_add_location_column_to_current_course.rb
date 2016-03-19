class AddLocationColumnToCurrentCourse < ActiveRecord::Migration
  def change
    add_column :current_courses, :location, :string
  end
end
