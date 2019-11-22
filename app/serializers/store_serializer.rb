class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :products
end
