class ShopOwner < ApplicationRecord
  VALID_EMAIL_REGEX = /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
# The above line ensures that the shop owner has a valid email address.
  has_secure_password
  has_many :promotions
  has_many :customers
  validates_presence_of :name, :shop_name, :address, :email
  validates_format_of :email, with: VALID_EMAIL_REGEX
end
