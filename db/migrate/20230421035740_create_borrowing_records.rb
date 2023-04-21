class CreateBorrowingRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :borrowing_records do |t|
      t.references :library, null: false, foreign_key: true
      t.references :stud, null: false, foreign_key: true
      t.date :borrow_date
      t.date :return_date
      t.string :status

      t.timestamps
    end
  end
end
