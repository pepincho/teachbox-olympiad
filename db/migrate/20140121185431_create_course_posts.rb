class CreateCoursePosts < ActiveRecord::Migration
  def change
    create_table :course_posts do |t|
      t.text :content
      t.integer :course_id
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
