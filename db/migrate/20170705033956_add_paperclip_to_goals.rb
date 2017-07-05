class AddPaperclipToGoals < ActiveRecord::Migration[5.1]

  def change
    add_attachment :goals, :image
  end
end
