class CreateAssetOpens < ActiveRecord::Migration
  def change
    create_table :asset_opens do |t|
      t.integer :article_id

      t.timestamps
    end
  end

    def self.up
      add_column :asset_opens, :attach_file_name,    :string
      add_column :asset_opens, :attach_content_type, :string
      add_column :asset_opens, :attach_file_size,    :integer
      add_column :asset_opens, :attach_updated_at,   :datetime
   end
  
    def self.down
     remove_column :asset_opens, :attach_file_name
     remove_column :asset_opens, :attach_content_type
     remove_column :asset_opens, :attach_file_size
     remove_column :asset_opens, :attach_updated_at
   end
   
end
