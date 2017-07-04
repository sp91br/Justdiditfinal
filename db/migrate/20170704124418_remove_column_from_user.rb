class RemoveColumnFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :title, :text
    remove_column :users, :subtitle, :text
    remove_column :users, :info, :integer
    remove_column :users, :description, :text
  end
end
