class CommentsCoursePost < ActiveRecord::Base
  attr_accessible :content, :course_post_id, :user_id

  belongs_to :user
  belongs_to :course_post
end
