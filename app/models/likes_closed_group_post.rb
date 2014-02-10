class LikesClosedGroupPost < ActiveRecord::Base
  attr_accessible :closed_group_post_id, :like_attribute, :user_id

  belongs_to :user
  belongs_to :closed_group_post
end
