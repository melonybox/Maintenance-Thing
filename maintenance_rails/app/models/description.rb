class Description < ApplicationRecord
  self.implicit_order_column = "created_at"

  belongs_to :notes, polymorphic: true
end
