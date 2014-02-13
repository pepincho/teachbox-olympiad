class LikesCommentsClosedGroupPost < ActiveRecord::Base
  attr_accessible :comments_closed_group_post_id, :user_id

  belongs_to :user
  belongs_to :comments_closed_group_post
end
