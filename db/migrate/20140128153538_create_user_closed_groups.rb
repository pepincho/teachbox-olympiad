class CreateUserClosedGroups < ActiveRecord::Migration
  def change
    create_table :user_closed_groups do |t|
      t.integer :closed_group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
