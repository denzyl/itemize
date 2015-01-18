class Purchase < ActiveRecord::Base
  has_many :purchase_items
  has_many :items, through: :purchase_items
  accepts_nested_attributes_for :items, allow_destroy: true
  belongs_to :user
end
