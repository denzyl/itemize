class AddColumnsToPurchases < ActiveRecord::Migration
  def change
    change_column :purchases, :purchased_total_cost, :decimal, { :scale => 2, :precision => 10 }
  end
end
