class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.date :purchased_on
      t.string :place
      t.decimal :purchased_total_cost

      t.timestamps null: false
    end
  end
end
