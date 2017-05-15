class CustomerPromotion < ApplicationRecord
  belongs_to :promotions
  belongs_to :customers
end
