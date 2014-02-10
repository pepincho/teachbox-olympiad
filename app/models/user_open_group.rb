class UserOpenGroup < ActiveRecord::Base
  attr_accessible :open_group_id, :user_id

  belongs_to :open_group
  belongs_to :user
end
