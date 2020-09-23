class RenameJournalEntryToEntry < ActiveRecord::Migration[5.2]
  def change
    rename_column :journal_entries, :journal_entry, :entry
  end
end
