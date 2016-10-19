# == Schema Information
#
# Table name: previous_pairs
#
#  id           :integer          not null, primary key
#  year         :integer          not null
#  giver_id     :integer          not null
#  recipient_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PreviousPair < ActiveRecord::Base
  belongs_to :giver, class_name: :Individual
  belongs_to :recipient, class_name: :Individual
  
  validates :giver, :recipient, :year, presence: true

end
