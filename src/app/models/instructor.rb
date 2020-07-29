class Instructor < ApplicationRecord
  # belongs_to :user
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  enum transmission: [:manual, :automatic]
  enum gender: [:male, :female]

end
