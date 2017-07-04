class CreateDoers < ActiveRecord::Migration[5.1]
  def change
    create_table :doers do |t|
      t.string :name
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
  end
end
