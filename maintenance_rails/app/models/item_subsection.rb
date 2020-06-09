class ItemSubsection < ApplicationRecord
  belongs_to :item
  has_many :item_subsection_parts, dependent: :destroy
end
