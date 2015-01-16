class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.integer :purchase_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
