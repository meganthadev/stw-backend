class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :journal_entry, :entry_date, :entry_type, :product_id
end
