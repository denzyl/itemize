class AddPurchaseIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :purchase_id, :integer
  end
end
