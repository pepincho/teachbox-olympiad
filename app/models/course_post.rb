class CoursePost < ActiveRecord::Base
  attr_accessible :content, :course_id, :title, :user_id, :attach

  belongs_to :user
  belongs_to :course

  has_many :likes_course_posts
  has_many :comments_course_posts
  has_attached_file :attach
end
