class CommentsClosedGroupPost < ActiveRecord::Base
  attr_accessible :closed_group_id, :content, :user_id

  belongs_to :user
  belongs_to :closed_group_post
end
