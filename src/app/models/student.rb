class Student < ApplicationRecord
  require 'date'

  enum transmission: {manual: 0, automatic: 1}
  
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_one_attached :avatar, dependent: :destroy
  has_many :lessons, dependent: :delete_all
  # has_many :comments, class_name: "comment", foreign_key: "comment_id"

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validate :address_check, on: :update
  validate :phone_number, on: :update
  validate :student_dob, on: :update

  
  private

  def phone_number
    if phone != nil || phone != ""
      phone.to_s.delete('^0-9')
      if phone.empty?
        errors.add(:phone, "can't be blank")
      elsif phone.length != 10
        errors.add(:phone, "must be a 10 digit mobile number. eg. '0411222333'")
      elsif phone[0..1] != "04"
        errors.add(:phone, "must be a mobile number starting with '04'")
      end
    end
  end
  
  def student_dob
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

  def address_check
    unless address.include?(", Australia")
      errors.add(:address, "must be selected from Google Dropdown")
    end
  end

end
