class CreateCreateBorrowRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :create_borrow_records do |t|
      t.integer :borrowing_id
      t.integer :stud_id
      t.integer :library_id

      t.timestamps
    end
  end
end
