class UserClosedGroup < ActiveRecord::Base
  attr_accessible :closed_group_id, :user_id

  belongs_to :closed_group
  belongs_to :user
end
