class LikesOpenGroupPost < ActiveRecord::Base
  attr_accessible :like_attribute, :open_group_post_id, :user_id

  belongs_to :user
  belongs_to :open_group_post
end
