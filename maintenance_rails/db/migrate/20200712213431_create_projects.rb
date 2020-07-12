class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects, id: :uuid do |t|
      t.string :name
      t.uuid :manager_id

      t.timestamps
    end
  end
end
