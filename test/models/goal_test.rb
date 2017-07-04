require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  belongs_to :doer
  has_many :milestones

end
