class CreateBorrowerDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :borrower_details do |t|
      t.integer :borrower_id
      t.integer :book_id
      t.datetime :borrowed_from
      t.datetime :borrowed_to
      t.datetime :actual_return_date
      t.integer :issued_by

      t.timestamps
    end
  end
end
