class LikesOpenGroup < ActiveRecord::Base
  attr_accessible :open_group_id, :user_id

  belongs_to :user
  belongs_to :open_group
end
