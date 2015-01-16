class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :brand_name
      t.string :item_name
      t.decimal :quantity
      t.decimal :weight
      t.string :measurement
      t.decimal :cost
      t.decimal :item_total_cost

      t.timestamps null: false
    end
  end
end
