class CreateLikesOpenGroups < ActiveRecord::Migration
  def change
    create_table :likes_open_groups do |t|
      t.integer :open_group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
