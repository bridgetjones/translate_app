class RemovePasswordFromShopOwners < ActiveRecord::Migration[5.0]
  def change
    remove_column :shop_owners, :password, :string
  end
end
