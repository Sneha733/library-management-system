class AddStudIdToStuds < ActiveRecord::Migration[7.0]
  def change
    add_column :studs, :stud_id, :integer
    add_index :studs, :stud_id
  end
end
