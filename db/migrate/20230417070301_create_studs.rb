class CreateStuds < ActiveRecord::Migration[7.0]
  def change
    create_table :studs do |t|
      t.string :stud_name
      t.string :stud_address

      t.timestamps
    end
  end
end
