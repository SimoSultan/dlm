class RemoveStatusFromLessons < ActiveRecord::Migration[6.0]
  def up
    remove_column :lessons, :status
  end

  def down
    add_column :lessons, :status, :integer
  end
end
