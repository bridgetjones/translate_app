class CustomerPromotion < ApplicationRecord
  belongs_to :promotion
  belongs_to :customer

  def self.sent
    where.not(sent_time: nil)
  end
end
