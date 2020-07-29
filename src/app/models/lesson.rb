class Lesson < ApplicationRecord

  # self.implicit_order_column = "created_at"

  belongs_to :student
  belongs_to :instructor

  # has_one :payment, class_name: "payment", foreign_key: "payment_id"
  # has_many :comments, class_name: "comment", foreign_key: "reference_id"

end