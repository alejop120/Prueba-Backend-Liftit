class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :plate, null: false
      t.integer :model, null: false, limit: 2
      t.references :user, null: false

      t.timestamps
    end
  end
end
