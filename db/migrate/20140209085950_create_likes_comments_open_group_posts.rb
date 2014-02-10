class CreateLikesCommentsOpenGroupPosts < ActiveRecord::Migration
  def change
    create_table :likes_comments_open_group_posts do |t|
      t.integer :comments_open_group_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
