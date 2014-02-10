class CreateCommentsOpenGroupPosts < ActiveRecord::Migration
  def change
    create_table :comments_open_group_posts do |t|
      t.text :content
      t.integer :open_group_post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
