class AddPostAttach < ActiveRecord::Migration
  def up
  	add_column :open_group_posts, :attach_file_name,    :string
    add_column :open_group_posts, :attach_content_type, :string
    add_column :open_group_posts, :attach_file_size,    :integer
    add_column :open_group_posts, :attach_updated_at,   :datetime
  end

  def down
    remove_column :open_group_posts, :attach_file_name
    remove_column :open_group_posts, :attach_content_type
    remove_column :open_group_posts, :attach_file_size
    remove_column :open_group_posts, :attach_updated_at
  end
end
