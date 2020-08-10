class User < ApplicationRecord

  enum role: {student: 0, instructor: 1, admin: 2}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :student, dependent: :destroy
  has_one :instructor, dependent: :destroy
  has_one :admin, dependent: :destroy

  # has_many :payments, class_name: "payment", foreign_key: "reference_id"

  validates :role, presence: true

end