class AddOriginalTexttoShopOwner < ActiveRecord::Migration[5.0]
  def change
    add_column :shop_owners, :original_text, :text
  end
end
