class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :name
      t.belongs_to :main_item, type: :uuid
      t.belongs_to :user, type: :uuid
      t.belongs_to :alert, type: :uuid

      t.timestamps
    end
  end
end

#e75f175e-f992-4498-bcbd-02af6e5e21df user
#1d00c3cb-35e5-4ad6-9b00-43e865b5b5f4 item
#1298bba7-1a20-424d-8155-013f4acd2bc2 alert
