class CreateSectionParts < ActiveRecord::Migration[5.2]
  def change
    create_table :section_parts do |t|
      t.string :name
      t.string :description
      t.string :interval
      t.integer :estimated_cost
      t.integer :actual_cost

      t.timestamps
    end
  end
end
