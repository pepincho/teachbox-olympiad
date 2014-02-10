class CreateLikesOpenGroupPosts < ActiveRecord::Migration
  def change
    create_table :likes_open_group_posts do |t|
      t.integer :like_attribute
      t.integer :open_group_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
