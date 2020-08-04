class RemoveTransmissionFromLessons < ActiveRecord::Migration[6.0]

  def up
    remove_column :lessons, :transmission
  end

  def down
    add_column :lessons, :transmission, :integer
  end
end
