class CreateShopOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_owners do |t|
      t.string :name
      t.string :shop_name
      t.string :address
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end
