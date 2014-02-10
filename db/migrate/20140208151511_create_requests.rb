class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :closed_group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
