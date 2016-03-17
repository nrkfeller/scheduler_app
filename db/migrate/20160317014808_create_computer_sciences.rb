class CreateComputerSciences < ActiveRecord::Migration
  def change
    create_table :computer_sciences do |t|
      t.integer :course_id
      t.string :course_group

      t.timestamps null: false
    end
  end
end
