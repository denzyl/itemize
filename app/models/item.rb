class Item < ActiveRecord::Base
  has_many :purchase_items
  has_many :purchases, through: :purchase_items
  has_many :item_categories
  has_many :categories, through: :item_categories
end
