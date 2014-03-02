class AssetOpen < ActiveRecord::Base
  attr_accessible :open_group_post_id

  belongs_to :open_group_post

  has_attached_file :attach

end
