class User < ApplicationRecord

  enum role: [:student, :instructor, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable, :confirmable
         :recoverable, :rememberable, :validatable

  has_one :student
  has_one :instructor
  has_one :admin

  has_many :payments, class_name: "payment", foreign_key: "reference_id"

  validates :role, presence: true

  # after_create :init_profile

  # before_save(on: :create) do 
  #   puts "here 1"
  #   if self.role == "student"
  #     puts "here2"
  #       student = Student.new
  #       student.user = current_user
  #       student.save
  #   else
  #     puts "here 3"
  #       instructor = Instructor.new
  #       instructor.user = current_user
  #       instructor.save
  #   end
  # end

  private 

    # def init_profile
    #   puts "here"
    #   if self.role == "student"
    #     puts "here 2"

    #     student = Student.new
    #     student.user = current_user
    #     student.save
    #   else
    #     instructor = Instructor.new
    #     instructor.user = current_user
    #     instructor.save
    #   end
    # end
end
