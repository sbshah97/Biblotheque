class AddIsRequestedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :is_requested, :boolean
  end
end
