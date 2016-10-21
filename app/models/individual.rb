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
  attr_accessor :santa

  def self.generate_pairs
    people = Individual.all.includes(:previous_recipients, :family).to_a
    santas = people.dup
    people.each do |person|
       person.santa = santas.delete_at(rand(santas.size))
    end

    finished = false
    until finished
      finished = true
      people.each do |person|
         unless person.santa.can_give_to?(person)
           candidates = people.select { |p|
               person.santa.can_give_to?(p) &&
               p.santa.can_give_to?(person)
           }
           raise if candidates.empty?
           other = candidates[rand(candidates.size)]
           person.santa, other.santa = other.santa, person.santa
           finished = false
         end
      end
    end

    giving_pairs = {}
    people.each do |person|
      giving_pairs[person.santa] = person
    end

    giving_pairs
  end

  def can_give_to?(other)
    !illegal_matches.include?(other)
  end

  def same_fam
    Individual.where(family_id: self.family_id)
  end

  def illegal_matches
    same_fam + previous_recipients
  end

end
