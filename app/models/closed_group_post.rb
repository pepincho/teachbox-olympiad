class ClosedGroupPost < ActiveRecord::Base
  attr_accessible :closed_group_id, :content, :title, :user_id, :attach

  belongs_to :user
  belongs_to :closed_group

  has_many :likes_closed_group_posts
  has_many :comments_closed_group_posts
  has_attached_file :attach
end
