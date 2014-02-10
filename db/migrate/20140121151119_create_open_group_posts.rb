class CreateOpenGroupPosts < ActiveRecord::Migration
  def change
    create_table :open_group_posts do |t|
      t.text :content
      t.integer :open_group_id
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
