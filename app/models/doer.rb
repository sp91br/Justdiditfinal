class Doer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


has_many :goals
  # 
  # has_attached_file :image, styles: { medium: "300x300>" , thumb: "100x100>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/



end
