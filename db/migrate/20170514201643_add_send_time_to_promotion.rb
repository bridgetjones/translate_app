class AddSendTimeToPromotion < ActiveRecord::Migration[5.0]
  def change
    add_column :promotions, :send_time, :datetime
  end
end
