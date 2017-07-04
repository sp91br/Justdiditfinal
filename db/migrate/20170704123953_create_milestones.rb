class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
      t.string :title
      t.integer :day
      t.text :description
      t.integer :goal_id

      t.timestamps
    end
  end
end
