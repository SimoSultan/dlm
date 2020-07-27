class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.references :user
      t.string :name
      t.string :address
      t.string :phone
      t.string :dob
      t.boolean :transmission

      t.timestamps
    end
  end
end
