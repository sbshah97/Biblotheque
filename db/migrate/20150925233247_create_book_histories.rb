class CreateBookHistories < ActiveRecord::Migration
  def change
    create_table :book_histories do |t|
      t.belongs_to :book, index: true
      t.belongs_to :user, index: true
      t.integer :book_id
      t.datetime :chk_out_dt
      t.datetime :chk_in_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
