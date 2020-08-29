class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :email
      t.string :google_token
      t.string :google_refresh_token
      t.monetize :cash_amount

      t.timestamps
    end
  end
end
