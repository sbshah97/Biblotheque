class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :email
      t.string :address
      t.string :phone
      t.boolean :is_admin
      t.boolean :is_deleted

      t.timestamps null: false
    end
  end
end
