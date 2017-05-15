class AddEmailToShopOwner < ActiveRecord::Migration[5.0]
  def change
    add_column :shop_owners, :email, :string
  end
end
