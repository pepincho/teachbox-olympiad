class CreateLikesClosedGroups < ActiveRecord::Migration
  def change
    create_table :likes_closed_groups do |t|
      t.integer :closed_group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
