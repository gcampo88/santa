# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Family < ActiveRecord::Base
  has_many :individuals
  validates :last_name, presence: true
end
