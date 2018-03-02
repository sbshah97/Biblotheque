class CreateBookDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :book_details do |t|
      t.string :book_title
      t.integer :publication_year
      t.string :language
      t.integer :category_type
      t.integer :binding_id
      t.integer :no_of_copies_stored
      t.integer :no_of_copies_present

      t.timestamps
    end
  end
end
