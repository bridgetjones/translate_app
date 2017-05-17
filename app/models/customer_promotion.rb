class CustomerPromotion < ApplicationRecord
  belongs_to :promotion
  belongs_to :customer
end
