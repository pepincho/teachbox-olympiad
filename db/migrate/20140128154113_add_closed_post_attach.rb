class AddClosedPostAttach < ActiveRecord::Migration
  def up
  	add_column :closed_group_posts, :attach_file_name,    :string
    add_column :closed_group_posts, :attach_content_type, :string
    add_column :closed_group_posts, :attach_file_size,    :integer
    add_column :closed_group_posts, :attach_updated_at,   :datetime
  end

  def down
    remove_column :closed_group_posts, :attach_file_name
    remove_column :closed_group_posts, :attach_content_type
    remove_column :closed_group_posts, :attach_file_size
    remove_column :closed_group_posts, :attach_updated_at
  end
end
