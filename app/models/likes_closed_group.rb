class LikesClosedGroup < ActiveRecord::Base
  attr_accessible :closed_group_id, :user_id

  belongs_to :user
  belongs_to :closed_group
end
