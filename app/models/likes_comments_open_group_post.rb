class LikesCommentsOpenGroupPost < ActiveRecord::Base
  attr_accessible :comments_open_group_post_id, :user_id

  belongs_to :user
  belongs_to :comments_open_group_post
end
