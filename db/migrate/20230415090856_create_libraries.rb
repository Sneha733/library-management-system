class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :book_name
      t.string :Author_name
      t.string :brief_description
      add_column:extended_description:string

      t.timestamps
    end
  end
end
