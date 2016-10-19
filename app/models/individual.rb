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
  has_many :previous_giving_pairs, class_name: :PreviousPair, foreign_key: :giver_id
  has_many :previous_recipients, through: :previous_giving_pairs, source: :recipient

  has_many :previous_receiving_pairs, class_name: :PreviousPair, foreign_key: :recipient_id
  has_many :previous_givers, through: :previous_receiving_pairs, source: :giver

  validates :family, :name, presence: true

  def self.generate_pairs
    # awesome stuff!
  end

  def same_fam
    Individual.where(family_id: self.family_id)
  end

  def illegal_matches
    same_fam + previous_recipients
  end

end
