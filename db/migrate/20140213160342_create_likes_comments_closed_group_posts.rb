class CreateLikesCommentsClosedGroupPosts < ActiveRecord::Migration
  def change
    create_table :likes_comments_closed_group_posts do |t|
      t.integer :comments_closed_group_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
