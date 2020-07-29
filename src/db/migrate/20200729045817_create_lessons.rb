class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :student, null: false, foreign_key: true
      t.references :instructor, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.integer :duration
      t.integer :transmission
      t.boolean :cancelled
      t.integer :status
      t.timestamps
    end
  end
end
