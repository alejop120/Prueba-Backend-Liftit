class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :document_number, null: false, unique: true, limit: 8

      t.timestamps
    end
  end
end
