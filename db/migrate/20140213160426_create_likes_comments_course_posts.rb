class CreateLikesCommentsCoursePosts < ActiveRecord::Migration
  def change
    create_table :likes_comments_course_posts do |t|
      t.integer :comments_course_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
