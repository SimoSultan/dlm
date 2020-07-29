class Student < ApplicationRecord

  enum transmission: [:manual, :automatic]
  
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  has_many :lessons
  # has_many :lessons, class_name: "lesson", foreign_key: "lesson_id"
  # has_many :comments, class_name: "comment", foreign_key: "comment_id"


  validate :validate_number
  
  private

  def validate_number
    puts "----------------------------"
    puts phone
    phone.to_s.delete('^0-9')
    if phone.length != 10
      errors.add(:phone, "must be a 10 digit mobile number. eg. '0400123456'")
    elsif phone[0..1] != "04"
      errors.add(:phone, "must be a mobile number starting with '04'")
    end
  end
end
