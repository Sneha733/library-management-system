class CreateCreateBorrowingRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :create_borrowing_records do |t|

      t.timestamps
    end
  end
end
