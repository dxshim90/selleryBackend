class Store < ApplicationRecord
    has_many :products
    has_many :store_categories
    has_many :categories, through: :store_categories


    validates :name, presence: true, allow_blank: false

end
