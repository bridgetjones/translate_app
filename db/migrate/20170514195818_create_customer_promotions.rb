class CreateCustomerPromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_promotions, id: false do |t|
      t.integer :customer_id
      t.integer :promotion_id
      t.index :customer_id
      t.index :promotion_id

      t.timestamps
    end
  end
end
