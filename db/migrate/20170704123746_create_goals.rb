class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :length
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
