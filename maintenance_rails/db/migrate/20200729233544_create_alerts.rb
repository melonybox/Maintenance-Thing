class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts, id: :uuid do |t|
      t.string :interval
      t.monetize :price

      t.timestamps
    end
  end
end
