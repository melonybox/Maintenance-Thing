class Project < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_many :sub_projects, class_name: "Project", foreign_key: "main_project_id"
  belongs_to :main_project, class_name: "Project", optional: true
end
