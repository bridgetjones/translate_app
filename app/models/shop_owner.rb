class ShopOwner < ApplicationRecord
  has_secure_password
  has_many :customers
end
