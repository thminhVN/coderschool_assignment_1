class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :img_url
      t.integer :views_count
      t.references :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
