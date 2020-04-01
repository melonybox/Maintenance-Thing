class CreateSectionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :section_items do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
