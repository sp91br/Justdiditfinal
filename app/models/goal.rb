class Goal < ApplicationRecord

  has_many :milestones
  belongs_to :user

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates :image, :attachment_presence => true
  validates_attachment :image, :content_type => { :content_type => /[jpg|png|jpeg|gif]/ }
# belongs_to :doer, required: true
# validates :doer, presence:true
# has_attached_file :image, styles: { medium: "300x300>" , thumb: "100x100>" }
# validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
