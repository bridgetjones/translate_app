class Promotion < ApplicationRecord
  belongs_to :shop_owner
  has_many :customer_promotions
  has_many :customers, through: :customer_promotions
end
