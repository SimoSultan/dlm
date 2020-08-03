class Admin < ApplicationRecord

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_one_attached :avatar

end
