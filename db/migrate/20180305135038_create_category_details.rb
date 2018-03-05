class CreateCategoryDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :category_details do |t|
      t.string :name

      t.timestamps
    end
  end
end
