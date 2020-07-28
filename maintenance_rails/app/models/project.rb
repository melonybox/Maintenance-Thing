class Project < ApplicationRecord
  self.implicit_order_column = "created_at"

  has_many :sub_projects, class_name: "Project", foreign_key: "main_project_id"
  belongs_to :main_project, class_name: "Project", optional: true
end

# d9b881d0-a381-4710-b2f7-a326888953f9
# -> f79b440b-7821-488a-80cb-00f62b3ddb42
# -> 37eea4a1-b1c0-4793-9d59-496f90a68738
# f9bca3b1-89c0-4fbf-8756-c1478e81ff6e sub_projects.empty? = true, this has no sub projects
# Project.where(main_project_id: nil), to be used as getting root projects displayed
