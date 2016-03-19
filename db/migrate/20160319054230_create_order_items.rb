class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.text :detail
      t.string :total

      t.timestamps null: false
    end
  end
end
