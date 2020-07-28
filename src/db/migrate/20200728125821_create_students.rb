class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :dob
      t.integer :transmission
      t.timestamps
    end
  end
end
