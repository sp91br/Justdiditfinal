class RemoveDoerIdFromGoal < ActiveRecord::Migration[5.1]
  def change
    remove_column :goals, :doer_id, :integer
  end
end
