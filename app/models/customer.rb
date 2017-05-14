class Customer < ApplicationRecord
  belongs_to :shop_owner
  has_many :customer_promotions
  has_many :promotions, through: :customer_promotions
end


# through and customer promotions are symbolks but through is a key so colon comes after
