class User < ApplicationRecord

  enum role: [:student, :instructor, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable, :confirmable
         :recoverable, :rememberable, :validatable

  has_one :student
  has_one :instructor

  validates :role, presence: true

end
