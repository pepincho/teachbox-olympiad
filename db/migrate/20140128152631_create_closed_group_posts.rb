class CreateClosedGroupPosts < ActiveRecord::Migration
  def change
    create_table :closed_group_posts do |t|
      t.integer :closed_group_id
      t.text :content
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
