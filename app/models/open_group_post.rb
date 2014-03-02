class OpenGroupPost < ActiveRecord::Base
attr_accessible :content, :open_group_id, :title, :user_id
  attr_accessible :attach, :attach1, :attach2, :attach3, :attach4, :attach5, :attach6, :attach7, :attach8, :attach9

  belongs_to :user
  belongs_to :open_group

  has_many :likes_open_group_posts
  has_many :comments_open_group_posts
  has_attached_file :attach
  has_attached_file :attach1
  has_attached_file :attach2
  has_attached_file :attach3
  has_attached_file :attach4
  has_attached_file :attach5
  has_attached_file :attach6
  has_attached_file :attach7
  has_attached_file :attach8
  has_attached_file :attach9
end
