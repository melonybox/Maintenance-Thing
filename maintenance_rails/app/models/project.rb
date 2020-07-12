class Project < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_many :subordinates, class_name: "Project", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Project", optional: true
end
