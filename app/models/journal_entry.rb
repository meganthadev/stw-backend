class JournalEntry < ApplicationRecord
  belongs_to :product
  validates :entry, presence: true, length: { minimum: 5 }
  validates_inclusion_of :entry_type, :in => ['Good', 'Neutral', 'Bad']
end
