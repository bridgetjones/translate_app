class AddTranslatedTextToPromotions < ActiveRecord::Migration[5.0]
  def change
    add_column :promotions, :translated_text, :text
  end
end
