class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :entry, :entry_date, :entry_type, :product_id
end
