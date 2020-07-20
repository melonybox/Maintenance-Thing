class Item < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_many :sub_items, class_name: "Item", foreign_key: "main_item_id"
  belongs_to :main_item, class_name: "Item", optional: true
end
