class CreateLikesClosedGroupPosts < ActiveRecord::Migration
  def change
    create_table :likes_closed_group_posts do |t|
      t.integer :closed_group_post_id
      t.integer :like_attribute
      t.integer :user_id

      t.timestamps
    end
  end
end
