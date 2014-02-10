class QuickAnswer < ActiveRecord::Base
  attr_accessible :answer, :quick_question_id, :user_id

  belongs_to :quick_question
  belongs_to :user
end
