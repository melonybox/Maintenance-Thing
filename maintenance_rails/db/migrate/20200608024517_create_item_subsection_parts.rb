class CreateItemSubsectionParts < ActiveRecord::Migration[5.2]
  def change
    create_table :item_subsection_parts do |t|
      t.string :name
      t.string :description
      t.string :interval
      t.integer :estimated_cost
      t.integer :actual_cost
      t.belongs_to :item_subsection, foreign_key: true

      t.timestamps
    end
  end
end
