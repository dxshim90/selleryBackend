class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :store
end
