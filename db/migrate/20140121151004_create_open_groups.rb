class CreateOpenGroups < ActiveRecord::Migration
  def change
    create_table :open_groups do |t|
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
