class Purchase < ActiveRecord::Base
  belongs_to :user
  has_many :purchase_items
  has_many :items, through: :purchase_items, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

  validates_presence_of :purchased_on, :place, :purchased_total_cost

end
