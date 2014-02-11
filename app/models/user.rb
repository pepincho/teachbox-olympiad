class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name, :password, :attach, :pic
  validates :name, :presence => true    
  validates :email, :presence => true

  has_attached_file :pic
  has_attached_file :attach

  has_many :user_open_group
  has_many :open_group_posts
  has_many :likes_open_groups
  has_many :likes_open_group_posts
  has_many :comments_open_group_posts

  has_many :user_course
  has_many :course_posts
  has_many :likes_courses
  has_many :likes_course_posts
  has_many :comments_course_posts

  has_many :user_closed_group
  has_many :closed_group_posts
  has_many :likes_closed_group
  has_many :likes_closed_group_posts
  has_many :comments_closed_group_posts

  has_many :requests
end
