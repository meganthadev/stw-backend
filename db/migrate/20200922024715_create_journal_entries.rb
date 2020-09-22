class CreateJournalEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :journal_entries do |t|
      t.belongs_to :product, foreign_key: true
      t.text :journal_entry
      t.datetime :entry_date
      t.string :entry_type

      t.timestamps
    end
  end
end
