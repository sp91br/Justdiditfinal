class RemoveUserIdFromDoer < ActiveRecord::Migration[5.1]
  def change
    remove_column :doers, :user_id, :integer
  end
end
