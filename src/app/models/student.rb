class Student < ApplicationRecord
  require 'date'

  enum transmission: {manual: 0, automatic: 1}
  
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

  has_one_attached :avatar
  has_many :lessons
  # has_many :comments, class_name: "comment", foreign_key: "comment_id"

  validates :first_name, presence: true, if: -> { first_name.empty? }
  validates :last_name, presence: true, if: -> { last_name.empty? }
  validates :address, presence: true, if: -> { address.empty? }
  validates :phone, presence: true, if: -> { phone.empty? || validate_phone_number() }
  validates :dob, presence: true, if: -> { dob.empty? || validate_instructor_dob() }
  
  private

  # def validation_check(type)
  #   # this check is to stop the validation check running 

  #   if type == "phone"
  #     false if phone == nil
  #     true if phone.empty?
  #   end

  #   if type == "dob"
  #     false if dob == nil
  #     true if dob.empty?
  #   end

  # end

  def validate_phone_number
    phone.to_s.delete('^0-9')
    if phone.length != 10
      errors.add(:phone, "must be a 10 digit mobile number. eg. '0400123456'")
    elsif phone[0..1] != "04"
      errors.add(:phone, "must be a mobile number starting with '04'")
    end
  end

  def validate_student_dob
    current_date = Date.today

    dob_year = dob.split('-')[0].to_i
    dob_month = dob.split('-')[1].to_i
    dob_day = dob.split('-')[2].to_i

    if current_date.year - 16 < dob_year
      errors.add(:student, "must be over 16 to sign up")
    elsif current_date.year - 16 == dob_year and current_date.month < dob_month
      errors.add(:student, "must be over 16 to sign up")
    elsif current_date.year - 16 == dob_year and current_date.month == dob_month and current_date.day < dob_day
      errors.add(:student, "must be over 16 to sign up")
    end
  end

end
