class Category < ApplicationRecord
    has_many :store_categories
    has_many :product_categories
    has_many :products, through: :product_categories
    has_many :stores, through: :store_categories
end
