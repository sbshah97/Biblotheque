class AddRequestedByToUsers < ActiveRecord::Migration
  def change
    add_column :users, :requested_by, :boolean
  end
end
