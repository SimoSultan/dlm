class User < ApplicationRecord

  enum role: [:student, :instructor, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable, :confirmable
         :recoverable, :rememberable, :validatable

  has_one :student
  # accepts_nested_attributes_for :student
  # accepts_nested_attributes_for :student, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
  # has_one :instructor
  # accepts_nested_attributes_for :instructor
  # accepts_nested_attributes_for :instructor, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true

  # def with_student
  #   build_student if student.nil?
  #   self
  # end
end
