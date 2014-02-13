class AddColumnUser < ActiveRecord::Migration
  def change
  	add_column :users, :description, :text, :default => "-"
  end
end
