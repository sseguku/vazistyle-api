class Product < ApplicationRecord

    belongs_to :events

    validates :name, presence: true
    validates :product_type, presence: true
    validates :price, presence: true
    validates :stock, presence: true

   
end
