class Alert < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_many :items
  has_many :users, through: :items
end
