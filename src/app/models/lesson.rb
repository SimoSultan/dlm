class Lesson < ApplicationRecord

  # enum transmission: [:manual, :automatic]
  # enum cancelled: [:false, :true]
  # enum status: [:request, :lesson]

  # belongs_to :student, class_name: "student", foreign_key: "student_id"
  belongs_to :student
  # belongs_to :instructor, class_name: "instructor", foreign_key: "instructor_id"
  belongs_to :instructor

  # has_one :payment, class_name: "payment", foreign_key: "payment_id"
  # has_many :comments, class_name: "comment", foreign_key: "reference_id"


end
