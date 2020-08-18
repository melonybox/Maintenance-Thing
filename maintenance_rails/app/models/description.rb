class Description < ApplicationRecord
  self.implicit_order_column = "created_at"

  belongs_to :note, polymorphic: true
end
