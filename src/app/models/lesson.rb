class Lesson < ApplicationRecord

  require 'date'

  belongs_to :student
  belongs_to :instructor

  # has_one :payment, class_name: "payment", foreign_key: "payment_id"
  # has_many :comments, class_name: "comment", foreign_key: "reference_id"

  validate :lesson_date, on: :create
  validates :time, presence: true, on: :create
  validates :student, presence: true, on: :create
  validates :instructor, presence: true, on: :create
  validates :duration, presence: true, on: :create

  private

  def lesson_date
    today = Time.now

    if date < today
      errors.add(:date, "of lesson must be at least tomorrow's date.")
    end
  end

  # def lesson_time
  #   today = Time.now
  #   # hour = today.hour
  #   # minute = today.min
  #   if time < today
  #     errors.add(:time, "of lesson must be at least tomorrow's.")
  # end



end