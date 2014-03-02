class RenameIt < ActiveRecord::Migration
  def change
  	rename_column :asset_opens, :article_id, :open_group_post_id
  end
end
