class AddColumnToLibraries < ActiveRecord::Migration[6.1]
  def change
    add_column :libraries, :extended_description, :string
  end
end
