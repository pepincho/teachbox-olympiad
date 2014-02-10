class CreateLikesCoursePosts < ActiveRecord::Migration
  def change
    create_table :likes_course_posts do |t|
      t.integer :course_post_id
      t.integer :like_attribute
      t.integer :user_id

      t.timestamps
    end
  end
end
