class CreateSoftwareEngineerings < ActiveRecord::Migration
  def change
    create_table :software_engineerings do |t|
      t.integer :course_id
      t.string :course_group

      t.timestamps null: false
    end
  end
end
