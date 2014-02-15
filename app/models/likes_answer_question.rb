class LikesAnswerQuestion < ActiveRecord::Base
	attr_accessible :quick_answer_id, :user_id

	belongs_to :user
  	belongs_to :quick_answer
end
