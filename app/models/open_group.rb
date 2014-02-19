class OpenGroup < ActiveRecord::Base
  attr_accessible :description, :name
  
  validates :name, :uniqueness => true 
  has_many :user_open_group
  has_many :open_group_posts

end
