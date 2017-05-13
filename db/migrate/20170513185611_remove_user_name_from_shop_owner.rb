class RemoveUserNameFromShopOwner < ActiveRecord::Migration[5.0]
  def change
    remove_column :shop_owners, :user_name
  end
end
