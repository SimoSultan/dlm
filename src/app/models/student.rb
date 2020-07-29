class Student < ApplicationRecord
  
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  enum transmission: [:manual, :automatic]

end
