class LikesCoursePost < ActiveRecord::Base
  attr_accessible :course_post_id, :like_attribute, :user_id
  
  belongs_to :user
  belongs_to :course_post
end
