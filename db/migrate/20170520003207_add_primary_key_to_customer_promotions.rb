class AddPrimaryKeyToCustomerPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :customer_promotions, :id, :primary_key
  end
end
