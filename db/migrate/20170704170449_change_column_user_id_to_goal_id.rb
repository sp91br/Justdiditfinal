class ChangeColumnUserIdToGoalId < ActiveRecord::Migration[5.1]
  def change
    rename_column :goals, :user_id, :doer_id
  end
end
