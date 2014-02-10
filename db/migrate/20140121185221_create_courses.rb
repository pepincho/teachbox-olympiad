class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :description
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
