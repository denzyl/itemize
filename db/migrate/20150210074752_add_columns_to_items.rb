class AddColumnsToItems < ActiveRecord::Migration
  def change
    change_column :items, :cost, :decimal, { :scale => 2, :precision => 10 }
    change_column :items, :item_total_cost, :decimal, { :scale => 2, :precision => 10 }
    change_column :items, :quantity, :decimal, { :scale => 2, :precision => 10 }
    change_column :items, :weight, :decimal, { :scale => 2, :precision => 10 }
  end
end
