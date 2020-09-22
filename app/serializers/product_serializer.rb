class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :rating, :description, :ingredients
  has_many :journal_entries
  
end
