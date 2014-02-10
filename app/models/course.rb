class Course < ActiveRecord::Base
  attr_accessible :description, :name, :user_id

  has_many :user_courses
  has_many :course_posts
end
