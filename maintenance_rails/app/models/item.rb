class Item < ApplicationRecord
  belongs_to :overview
  has_many :item_subsections, dependent: :destroy
end
