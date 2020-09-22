class JournalEntry < ApplicationRecord
  belongs_to :product
  validates :journal_entry, presence: true, length: { minimum: 15 }
  validates_inclusion_of :entry_type, :in => ['Good', 'Neutral', 'Bad']
end
