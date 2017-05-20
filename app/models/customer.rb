class Customer < ApplicationRecord
  belongs_to :shop_owner
  has_many :customer_promotions
  has_many :promotions, through: :customer_promotions
  validates_presence_of :name, :language, :ph_number

  def sent_customer_promotions
    customer_promotions.sent
  end
end

# through and customer promotions are symbols but through is a key so colon comes after
