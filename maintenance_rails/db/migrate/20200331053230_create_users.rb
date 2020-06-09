class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

# user has many overviews
# overviews has many items
# item has many item sub section
# item sub section has many item sub section part

# overview belongs to user
# item belongs to overview
# item sub section belongs to item
# item sub section part belongs to item sub
