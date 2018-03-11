class AddRequestedByToBooks < ActiveRecord::Migration
  def change
    add_column :books, :requested_by, :integer
  end
end
