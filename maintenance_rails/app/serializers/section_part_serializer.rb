class SectionPartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :interval, :estimated_cost, :actual_cost
end
