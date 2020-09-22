class JournalEntry < ApplicationRecord
  belongs_to :product
  validates :journal_entry, presence :true, length: { in: 6..250 }
  validates_inclusion_of :entry_type, :in => ['Good', 'Neutral', 'Bad']
end
