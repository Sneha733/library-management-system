class CreateBorrowRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :borrow_records do |t|
      t.integer :borrowing_id
      t.integer :stud_id
      t.integer :library_id
      t.date :borrow_date
      t.date :return_date
      t.string :status

      t.timestamps
    end
    add_index :borrow_records, :borrowing_id
    add_index :borrow_records, :stud_id
    add_index :borrow_records, :library_id
  end
end
