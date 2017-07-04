require 'test_helper'

class MilestoneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  belongs_to :milestone
  has_many :goals
end
