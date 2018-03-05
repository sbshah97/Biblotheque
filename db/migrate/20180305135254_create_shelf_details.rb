class CreateShelfDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :shelf_details do |t|
      t.text :address

      t.timestamps
    end
  end
end
