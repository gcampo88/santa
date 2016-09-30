# == Schema Information
#
# Table name: individuals
#
#  id         :integer          not null, primary key
#  family_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class IndividualTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
