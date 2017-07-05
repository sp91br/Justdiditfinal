class RemoveImageFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :image_file_name, :string
  end
end
