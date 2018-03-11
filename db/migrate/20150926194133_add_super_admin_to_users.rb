class AddSuperAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :super_admin, :boolean
  end
end
