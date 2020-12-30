class Product < ApplicationRecord
  has_many :carts
  has_many :collections
end
