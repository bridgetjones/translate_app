class ShopOwner < ApplicationRecord
  has_secure_password
  has_many :promotions
  has_many :customers
end
