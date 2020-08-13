class CreateDescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions, id: :uuid do |t|
      t.string :description
      t.references :notes, type: :uuid, polymorphic: true

      t.timestamps
    end
  end
end
