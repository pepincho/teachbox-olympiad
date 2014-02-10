class CreateCommentsClosedGroupPosts < ActiveRecord::Migration
  def change
    create_table :comments_closed_group_posts do |t|
      t.integer :closed_group_id
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
