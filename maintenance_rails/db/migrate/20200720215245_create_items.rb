class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :name
      t.uuid :main_item_id
      t.belongs_to :user, foreign_key: true
      t.belongs_to :alert, foreign_key: true

      t.timestamps
    end
  end
end
