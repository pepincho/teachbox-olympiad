class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :comments_closed_group_posts, :closed_group_id, :closed_group_post_id
  end
end
