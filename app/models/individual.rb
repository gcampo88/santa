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

class Individual < ActiveRecord::Base
  belongs_to :family
  validates :family, :name, presence: true
  
end
