class CreateCommentsCoursePosts < ActiveRecord::Migration
  def change
    create_table :comments_course_posts do |t|
      t.text :content
      t.integer :course_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
