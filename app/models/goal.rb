class Goal < ApplicationRecord

  has_many :milestones
  belongs_to :doer

end
