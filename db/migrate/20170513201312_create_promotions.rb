class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.belongs_to :shop_owner, foreign_key: true
      t.string :english_promo
      t.text :body

      t.timestamps
    end
  end
end
