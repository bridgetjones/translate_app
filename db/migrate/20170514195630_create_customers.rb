class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :language
      t.string :phone
      t.references :shop_owner, foreign_key: true

      t.timestamps
    end
  end
end
