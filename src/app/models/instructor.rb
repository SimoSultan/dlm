class Instructor < ApplicationRecord

  enum transmission: {manual: 0, automatic: 1}
  enum gender: {male: 0, female: 1}

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  has_one_attached :avatar
  has_many :lessons
  # has_many :lessons, class_name: "lesson", foreign_key: "lesson_id"
  # has_many :comments, class_name: "comment", foreign_key: "comment_id"

  validate :validate_number
  
  private

  def validate_number
    phone.to_s.delete('^0-9')
    if phone.length != 10
      errors.add(:phone, "must be a 10 digit mobile number. eg. '0400123456'")
    elsif phone[0..1] != "04"
      errors.add(:phone, "must be a mobile number starting with '04'")
    end
  end

  def validate_instructor_dob
    current_date = Date.today

    dob_year = dob.split('-')[0].to_i
    dob_month = dob.split('-')[1].to_i
    dob_day = dob.split('-')[2].to_i

    if current_date.year - 20 < dob_year
      errors.add(:student, "must be over 16 to sign up")
    elsif current_date.year - 20 == dob_year and current_date.month < dob_month
      errors.add(:student, "must be over 16 to sign up")
    elsif current_date.year - 20 == dob_year and current_date.month == dob_month and current_date.day < dob_day
      errors.add(:student, "must be over 16 to sign up")
    end
  end
end
