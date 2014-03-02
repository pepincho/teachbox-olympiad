class AddColumnsToPosts < ActiveRecord::Migration
  def up
   add_column :open_group_posts, :attach1_file_name,    :string
    add_column :open_group_posts, :attach1_content_type, :string
    add_column :open_group_posts, :attach1_file_size,    :integer
    add_column :open_group_posts, :attach1_updated_at,   :datetime

    add_column :open_group_posts, :attach2_file_name,    :string
    add_column :open_group_posts, :attach2_content_type, :string
    add_column :open_group_posts, :attach2_file_size,    :integer
    add_column :open_group_posts, :attach2_updated_at,   :datetime

    add_column :open_group_posts, :attach3_file_name,    :string
    add_column :open_group_posts, :attach3_content_type, :string
    add_column :open_group_posts, :attach3_file_size,    :integer
    add_column :open_group_posts, :attach3_updated_at,   :datetime

    add_column :open_group_posts, :attach4_file_name,    :string
    add_column :open_group_posts, :attach4_content_type, :string
    add_column :open_group_posts, :attach4_file_size,    :integer
    add_column :open_group_posts, :attach4_updated_at,   :datetime

    add_column :open_group_posts, :attach5_file_name,    :string
    add_column :open_group_posts, :attach5_content_type, :string
    add_column :open_group_posts, :attach5_file_size,    :integer
    add_column :open_group_posts, :attach5_updated_at,   :datetime

    add_column :open_group_posts, :attach6_file_name,    :string
    add_column :open_group_posts, :attach6_content_type, :string
    add_column :open_group_posts, :attach6_file_size,    :integer
    add_column :open_group_posts, :attach6_updated_at,   :datetime

    add_column :open_group_posts, :attach7_file_name,    :string
    add_column :open_group_posts, :attach7_content_type, :string
    add_column :open_group_posts, :attach7_file_size,    :integer
    add_column :open_group_posts, :attach7_updated_at,   :datetime

    add_column :open_group_posts, :attach8_file_name,    :string
    add_column :open_group_posts, :attach8_content_type, :string
    add_column :open_group_posts, :attach8_file_size,    :integer
    add_column :open_group_posts, :attach8_updated_at,   :datetime

    add_column :open_group_posts, :attach9_file_name,    :string
    add_column :open_group_posts, :attach9_content_type, :string
    add_column :open_group_posts, :attach9_file_size,    :integer
    add_column :open_group_posts, :attach9_updated_at,   :datetime



    add_column :course_posts, :attach1_file_name,    :string
    add_column :course_posts, :attach1_content_type, :string
    add_column :course_posts, :attach1_file_size,    :integer
    add_column :course_posts, :attach1_updated_at,   :datetime

    add_column :course_posts, :attach2_file_name,    :string
    add_column :course_posts, :attach2_content_type, :string
    add_column :course_posts, :attach2_file_size,    :integer
    add_column :course_posts, :attach2_updated_at,   :datetime

    add_column :course_posts, :attach3_file_name,    :string
    add_column :course_posts, :attach3_content_type, :string
    add_column :course_posts, :attach3_file_size,    :integer
    add_column :course_posts, :attach3_updated_at,   :datetime

    add_column :course_posts, :attach4_file_name,    :string
    add_column :course_posts, :attach4_content_type, :string
    add_column :course_posts, :attach4_file_size,    :integer
    add_column :course_posts, :attach4_updated_at,   :datetime

    add_column :course_posts, :attach5_file_name,    :string
    add_column :course_posts, :attach5_content_type, :string
    add_column :course_posts, :attach5_file_size,    :integer
    add_column :course_posts, :attach5_updated_at,   :datetime

    add_column :course_posts, :attach6_file_name,    :string
    add_column :course_posts, :attach6_content_type, :string
    add_column :course_posts, :attach6_file_size,    :integer
    add_column :course_posts, :attach6_updated_at,   :datetime

    add_column :course_posts, :attach7_file_name,    :string
    add_column :course_posts, :attach7_content_type, :string
    add_column :course_posts, :attach7_file_size,    :integer
    add_column :course_posts, :attach7_updated_at,   :datetime

    add_column :course_posts, :attach8_file_name,    :string
    add_column :course_posts, :attach8_content_type, :string
    add_column :course_posts, :attach8_file_size,    :integer
    add_column :course_posts, :attach8_updated_at,   :datetime

    add_column :course_posts, :attach9_file_name,    :string
    add_column :course_posts, :attach9_content_type, :string
    add_column :course_posts, :attach9_file_size,    :integer
    add_column :course_posts, :attach9_updated_at,   :datetime



	add_column :closed_group_posts, :attach1_file_name,    :string
    add_column :closed_group_posts, :attach1_content_type, :string
    add_column :closed_group_posts, :attach1_file_size,    :integer
    add_column :closed_group_posts, :attach1_updated_at,   :datetime

    add_column :closed_group_posts, :attach2_file_name,    :string
    add_column :closed_group_posts, :attach2_content_type, :string
    add_column :closed_group_posts, :attach2_file_size,    :integer
    add_column :closed_group_posts, :attach2_updated_at,   :datetime

    add_column :closed_group_posts, :attach3_file_name,    :string
    add_column :closed_group_posts, :attach3_content_type, :string
    add_column :closed_group_posts, :attach3_file_size,    :integer
    add_column :closed_group_posts, :attach3_updated_at,   :datetime

    add_column :closed_group_posts, :attach4_file_name,    :string
    add_column :closed_group_posts, :attach4_content_type, :string
    add_column :closed_group_posts, :attach4_file_size,    :integer
    add_column :closed_group_posts, :attach4_updated_at,   :datetime

    add_column :closed_group_posts, :attach5_file_name,    :string
    add_column :closed_group_posts, :attach5_content_type, :string
    add_column :closed_group_posts, :attach5_file_size,    :integer
    add_column :closed_group_posts, :attach5_updated_at,   :datetime

    add_column :closed_group_posts, :attach6_file_name,    :string
    add_column :closed_group_posts, :attach6_content_type, :string
    add_column :closed_group_posts, :attach6_file_size,    :integer
    add_column :closed_group_posts, :attach6_updated_at,   :datetime

    add_column :closed_group_posts, :attach7_file_name,    :string
    add_column :closed_group_posts, :attach7_content_type, :string
    add_column :closed_group_posts, :attach7_file_size,    :integer
    add_column :closed_group_posts, :attach7_updated_at,   :datetime

    add_column :closed_group_posts, :attach8_file_name,    :string
    add_column :closed_group_posts, :attach8_content_type, :string
    add_column :closed_group_posts, :attach8_file_size,    :integer
    add_column :closed_group_posts, :attach8_updated_at,   :datetime

    add_column :closed_group_posts, :attach9_file_name,    :string
    add_column :closed_group_posts, :attach9_content_type, :string
    add_column :closed_group_posts, :attach9_file_size,    :integer
    add_column :closed_group_posts, :attach9_updated_at,   :datetime

  end


  def down
    remove_column :open_group_posts, :attach1_file_name
    remove_column :open_group_posts, :attach1_content_type
    remove_column :open_group_posts, :attach1_file_size
    remove_column :open_group_posts, :attach1_updated_at

    remove_column :open_group_posts, :attach2_file_name
    remove_column :open_group_posts, :attach2_content_type
    remove_column :open_group_posts, :attach2_file_size
    remove_column :open_group_posts, :attach2_updated_at

    remove_column :open_group_posts, :attach3_file_name
    remove_column :open_group_posts, :attach3_content_type
    remove_column :open_group_posts, :attach3_file_size
    remove_column :open_group_posts, :attach3_updated_at

    remove_column :open_group_posts, :attach4_file_name
    remove_column :open_group_posts, :attach4_content_type
    remove_column :open_group_posts, :attach4_file_size
    remove_column :open_group_posts, :attach4_updated_at

    remove_column :open_group_posts, :attach5_file_name
    remove_column :open_group_posts, :attach5_content_type
    remove_column :open_group_posts, :attach5_file_size
    remove_column :open_group_posts, :attach5_updated_at

    remove_column :open_group_posts, :attach6_file_name
    remove_column :open_group_posts, :attach6_content_type
    remove_column :open_group_posts, :attach6_file_size
    remove_column :open_group_posts, :attach6_updated_at

    remove_column :open_group_posts, :attach7_file_name
    remove_column :open_group_posts, :attach7_content_type
    remove_column :open_group_posts, :attach7_file_size
    remove_column :open_group_posts, :attach7_updated_at

    remove_column :open_group_posts, :attach8_file_name
    remove_column :open_group_posts, :attach8_content_type
    remove_column :open_group_posts, :attach8_file_size
    remove_column :open_group_posts, :attach8_updated_at

    remove_column :open_group_posts, :attach9_file_name
    remove_column :open_group_posts, :attach9_content_type
    remove_column :open_group_posts, :attach9_file_size
    remove_column :open_group_posts, :attach9_updated_at



    remove_column :course_posts, :attach1_file_name
    remove_column :course_posts, :attach1_content_type
    remove_column :course_posts, :attach1_file_size
    remove_column :course_posts, :attach1_updated_at

    remove_column :course_posts, :attach2_file_name
    remove_column :course_posts, :attach2_content_type
    remove_column :course_posts, :attach2_file_size
    remove_column :course_posts, :attach2_updated_at

    remove_column :course_posts, :attach3_file_name
    remove_column :course_posts, :attach3_content_type
    remove_column :course_posts, :attach3_file_size
    remove_column :course_posts, :attach3_updated_at

    remove_column :course_posts, :attach4_file_name
    remove_column :course_posts, :attach4_content_type
    remove_column :course_posts, :attach4_file_size
    remove_column :course_posts, :attach4_updated_at

    remove_column :course_posts, :attach5_file_name
    remove_column :course_posts, :attach5_content_type
    remove_column :course_posts, :attach5_file_size
    remove_column :course_posts, :attach5_updated_at

    remove_column :course_posts, :attach6_file_name
    remove_column :course_posts, :attach6_content_type
    remove_column :course_posts, :attach6_file_size
    remove_column :course_posts, :attach6_updated_at

    remove_column :course_posts, :attach7_file_name
    remove_column :course_posts, :attach7_content_type
    remove_column :course_posts, :attach7_file_size
    remove_column :course_posts, :attach7_updated_at

    remove_column :course_posts, :attach8_file_name
    remove_column :course_posts, :attach8_content_type
    remove_column :course_posts, :attach8_file_size
    remove_column :course_posts, :attach8_updated_at

    remove_column :course_posts, :attach9_file_name
    remove_column :course_posts, :attach9_content_type
    remove_column :course_posts, :attach9_file_size
    remove_column :course_posts, :attach9_updated_at



    remove_column :closed_group_posts, :attach1_file_name
    remove_column :closed_group_posts, :attach1_content_type
    remove_column :closed_group_posts, :attach1_file_size
    remove_column :closed_group_posts, :attach1_updated_at

    remove_column :closed_group_posts, :attach2_file_name
    remove_column :closed_group_posts, :attach2_content_type
    remove_column :closed_group_posts, :attach2_file_size
    remove_column :closed_group_posts, :attach2_updated_at

    remove_column :closed_group_posts, :attach3_file_name
    remove_column :closed_group_posts, :attach3_content_type
    remove_column :closed_group_posts, :attach3_file_size
    remove_column :closed_group_posts, :attach3_updated_at

    remove_column :closed_group_posts, :attach4_file_name
    remove_column :closed_group_posts, :attach4_content_type
    remove_column :closed_group_posts, :attach4_file_size
    remove_column :closed_group_posts, :attach4_updated_at

    remove_column :closed_group_posts, :attach5_file_name
    remove_column :closed_group_posts, :attach5_content_type
    remove_column :closed_group_posts, :attach5_file_size
    remove_column :closed_group_posts, :attach5_updated_at

    remove_column :closed_group_posts, :attach6_file_name
    remove_column :closed_group_posts, :attach6_content_type
    remove_column :closed_group_posts, :attach6_file_size
    remove_column :closed_group_posts, :attach6_updated_at

    remove_column :closed_group_posts, :attach7_file_name
    remove_column :closed_group_posts, :attach7_content_type
    remove_column :closed_group_posts, :attach7_file_size
    remove_column :closed_group_posts, :attach7_updated_at

    remove_column :closed_group_posts, :attach8_file_name
    remove_column :closed_group_posts, :attach8_content_type
    remove_column :closed_group_posts, :attach8_file_size
    remove_column :closed_group_posts, :attach8_updated_at

    remove_column :closed_group_posts, :attach9_file_name
    remove_column :closed_group_posts, :attach9_content_type
    remove_column :closed_group_posts, :attach9_file_size
    remove_column :closed_group_posts, :attach9_updated_at

  end



end
