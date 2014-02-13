class LikesCommentsCoursePost < ActiveRecord::Base
  attr_accessible :comments_course_post_id, :user_id

  belongs_to :user
  belongs_to :comments_course_post
end
