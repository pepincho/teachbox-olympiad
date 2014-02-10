class CreateClosedGroups < ActiveRecord::Migration
  def change
    create_table :closed_groups do |t|
      t.integer :admin_id
      t.text :decription
      t.string :name

      t.timestamps
    end
  end
end
