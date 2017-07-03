class AddStatusTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :status_type, :string
  end
end
