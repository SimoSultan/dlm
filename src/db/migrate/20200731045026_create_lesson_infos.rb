class CreateLessonInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_infos do |t|
      t.integer :cost
      t.integer :duration
      t.timestamps
    end
  end
end
