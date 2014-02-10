class AddCoursePostAttach < ActiveRecord::Migration
  def up
  	add_column :course_posts, :attach_file_name,    :string
    add_column :course_posts, :attach_content_type, :string
    add_column :course_posts, :attach_file_size,    :integer
    add_column :course_posts, :attach_updated_at,   :datetime
  end

  def down
    remove_column :course_posts, :attach_file_name
    remove_column :course_posts, :attach_content_type
    remove_column :course_posts, :attach_file_size
    remove_column :course_posts, :attach_updated_at
  end
end
