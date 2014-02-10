class OpenGroup < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :user_open_group
  has_many :open_group_posts
end
