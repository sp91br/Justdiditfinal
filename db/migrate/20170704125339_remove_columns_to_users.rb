class RemoveColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :goal, :string
    remove_column :users, :legth, :interger
  end
end
