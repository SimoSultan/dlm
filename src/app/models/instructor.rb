class Instructor < ApplicationRecord

  enum transmission: [:manual, :automatic]
  enum gender: [:male, :female]

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  has_many :lessons
  # has_many :lessons, class_name: "lesson", foreign_key: "lesson_id"
  # has_many :comments, class_name: "comment", foreign_key: "comment_id"

end
