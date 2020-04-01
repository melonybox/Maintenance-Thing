class CreateSectionTags < ActiveRecord::Migration[5.2]
  def change
    create_table :section_tags do |t|
      t.string :names

      t.timestamps
    end
  end
end
