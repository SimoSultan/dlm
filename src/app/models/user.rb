class User < ApplicationRecord

  enum role: {student: 0, instructor: 1, admin: 2}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable, :confirmable
         :recoverable, :rememberable, :validatable

  has_one :student
  has_one :instructor
  has_one :admin

  # has_many :payments, class_name: "payment", foreign_key: "reference_id"

  validates :role, presence: true

  private 


  


end