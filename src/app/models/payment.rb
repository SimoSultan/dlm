class Payment < ApplicationRecord
  belongs_to :lesson, class_name: "lesson", foreign_key: "lesson_id"
end
