class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :title
      t.text :subtitle
      t.integer :info
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
