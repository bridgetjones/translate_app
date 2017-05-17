class AddSentTimeToPromotion < ActiveRecord::Migration[5.0]
  def change
    add_column :promotions, :sent_time, :timestamp
  end
end
