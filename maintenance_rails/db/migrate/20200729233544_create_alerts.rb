class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts, id: :uuid do |t|
      t.uuid :item_id
      t.string :description
      t.string :interval
      t.decimal :cost


      t.timestamps
    end
  end
end
