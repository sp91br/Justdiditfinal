class AddAttachmentImageToMilestone < ActiveRecord::Migration[5.1]
  def self.up
  change_table :milestones do |t|
    t.attachment :image
  end
end

  def self.down
    remove_attachment :milestones, :image
  end
end
