class CreateBindingDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :binding_details do |t|
      t.string :name

      t.timestamps
    end
  end
end
