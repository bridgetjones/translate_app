class AddSentTimeToCustomerPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :customer_promotions, :sent_time, :timestamp
  end
end
