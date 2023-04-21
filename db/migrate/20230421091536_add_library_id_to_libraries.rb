class AddLibraryIdToLibraries < ActiveRecord::Migration[7.0]
  def change
    add_column :libraries, :library_id, :integer
    add_index :libraries, :library_id
  end
end
