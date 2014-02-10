class QuickQuestion < ActiveRecord::Base
  attr_accessible :question, :user_id

  belongs_to :user
  has_many :quick_answers
end
