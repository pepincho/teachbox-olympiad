class AddColumns < ActiveRecord::Migration
  def change
  	add_column :open_groups, :counter, :integer, :default => 1
  	add_column :courses, :counter, :integer, :default => 1
  	add_column :closed_groups, :counter, :integer, :default => 1
  end
end
